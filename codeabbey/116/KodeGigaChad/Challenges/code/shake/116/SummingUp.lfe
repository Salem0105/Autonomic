(defmodule storage
  (export (save-to-storage 1)))

;; Internal storage
(defvar *storage* #((0.0) (0.0) (0.0)))

;; Function to save values to internal storage
(defun save-to-storage (a b sum)
  (set *storage* #((,a) (,b) (,sum))))

(defun main ()
  ;; Load values from internal storage
  (set *storage* (load-from-storage))

  ;; Get input values
  (let* ((a (io:format "Enter the value of A: ") (io:get_line) (string:to_float))
         (b (io:format "Enter the value of B: ") (io:get_line) (string:to_float)))

    ;; Calculate sum
    (let* ((result (+ a b)))

      ;; Print the result
      (io:format "The sum of ~p and ~p is: ~p~n" (list a b result))

      ;; Update storage values
      (save-to-storage a b result))))

;; Function to load values from internal storage
(defun load-from-storage ()
  (list (list-ref *storage* 0 0.0)
        (list-ref *storage* 1 0.0)
        (list-ref *storage* 2 0.0)))

;; Run the main function
(main)
