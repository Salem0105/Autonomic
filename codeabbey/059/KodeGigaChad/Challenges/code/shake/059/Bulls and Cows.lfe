(defmodule code-guessing-game
  (export (main 0)))

(defn calculate-hint
  ((secret guess)
   (let* ((correct-position-count (count (fun ((s g) (= s g))) (lists:zip secret guess)))
          (correct-digit-count (- (count (fun ((digit) (lists:member digit guess))) secret)
                                  correct-position-count)))
     (list correct-position-count correct-digit-count))))

(defn process-guesses
  ((secret guesses)
   (lists:map (fun ((guess) (calculate-hint secret guess)) guesses)))

(defn main
  ()
  (let* ((input-data (io:format "Enter secret and number of guesses (e.g., \"1492 5\"): "),
          (string:tokens (string:strip (io:get_line "")) " "))
         (secret (hd input-data))
         (num-guesses (string:to_integer (nth 1 input-data)))
         (guesses (io:format "Enter guesses separated by space: "),
          (string:tokens (string:strip (io:get_line "")) " ")))
    (lists:foreach (fun ((hint) (io:format "~p " hint)) (process-guesses secret guesses)))))
