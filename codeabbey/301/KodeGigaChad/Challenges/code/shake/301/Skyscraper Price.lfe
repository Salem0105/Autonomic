(defmodule skyscraper-profit
  (export (main 0)))

(defun calculate-profit (n m x)
  (letrec ((calculate-profit-helper
            (lambda (floor total-profit increment)
              (if (= floor n)
                  total-profit
                  (let* ((new-total-profit (+ total-profit (* (+ x increment) (- (/ n m) (/ floor m))))))
                    (calculate-profit-helper (+ floor 1) new-total-profit (if (= 0 (rem (+ floor 1) m)) (+ increment 1000) increment))))))))
    (calculate-profit-helper 0 0 0)))

(defun handle-testcases (testcases)
  (lists:map (lambda (testcase)
               (let* ((n (element 0 testcase))
                      (m (element 1 testcase))
                      (x (element 2 testcase)))
                 (calculate-profit n m x)))
             testcases))

(defun main ()
  (let ((t (io:format "Enter the number of testcases: ")
            (io:get_chars('))))
    (let ((testcases (loop ((remaining-t (integer-to-list t))
                            (acc '()))
                      (case remaining-t
                        (([$\n]) (lists:reverse acc))
                        ([$\s|rest] (let* ((n (list-to-integer (lists:reverse rest)))
                                           (testcase (list n)))
                                      (loop remaining-t (cons testcase acc))))))))
      (let ((results (handle-testcases testcases)))
        (io:format "~p~n" `(,results))))))
