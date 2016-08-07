#|
Rough testing shows this procedure yeilds more accurate
results than those from the procedure in newt-sqrt.scm
|#

(define (sqrt x)
    (define (avg a b) (/ (+ a b) 2))
    (define (good-guess? new-guess old-guess)
      (< (abs (- new-guess old-guess)) 0.00001))
    (define (better-guess guess)
      (avg guess (/ x guess)))
    (define (sqrt-iter old-guess)
      (define new-guess (better-guess old-guess))
      (if (good-guess? new-guess old-guess)
          new-guess
          (sqrt-iter new-guess)))
    (sqrt-iter 1.0))
