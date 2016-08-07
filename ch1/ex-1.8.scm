#|
Note that this procedure uses the good-guess? procedure
from ex-1.7.scm
|#

(define (cbrt x)
    (define (square x) (* x x))
    (define (good-guess? new-guess old-guess)
      (< (abs (- new-guess old-guess)) 0.00001))
    (define (better-guess guess)
      (/ (+ (/ x (square guess)) 
            (* guess 2))
         3))
    (define (cbrt-iter old-guess)
      (define new-guess (better-guess old-guess))
      (if (good-guess? new-guess old-guess)
          new-guess
          (cbrt-iter new-guess)))
    (cbrt-iter 1.0))
