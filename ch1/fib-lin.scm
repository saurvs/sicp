(define (fib x)
  (define (fib-iter count a b)
    (if (= count 0)
        a
        (fib-iter (- count 1) b (+ a b))))
  (fib-iter x 0 1))
