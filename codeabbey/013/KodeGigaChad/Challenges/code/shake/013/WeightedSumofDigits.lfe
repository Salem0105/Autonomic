(defun weighted-sum-of-digits (value)
  (let ((digits (string:to_list (integer_to_list value))))
    (lists:sum (lists:map (lambda (digit index)
                            (* (list_to_integer (list digit))
                               (+ index 1)))
                          digits
                          (lists:seq 0 (- (length digits) 1))))))

(defun calculate-results (test-values)
  (lists:map (lambda (value)
               (weighted-sum-of-digits value))
             test-values))

(defun main ()
  (let* ((num-test-cases (io:get_line "Enter the number of test cases: "))
         (test-values (io:get_line "Enter the values: "))
         (test-values-list (lists:map (lambda (x) (list_to_integer x))
                                      (string:tokens test-values " ")))
         (results (calculate-results test-values-list)))
    (io:format("~s~n" (string:join(" ", lists:map (lambda (x) (integer_to_list x))
                                     results)))))

(main)
