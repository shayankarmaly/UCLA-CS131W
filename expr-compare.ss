#lang racket


(define (lambda? x)
  (member x '(lambda λ)))

(define (compare-equality x y)
  (cond
        [(equal? x y) x]
        [(and
          (boolean? x) (boolean? y)) 
         (if x '% '(not %))]
         ;if one of them is not list - which means that not function
        [(or
             (not (list? x)) 
             (not (list? y)))
             (list 'if '% x y)]
        ;now how to figure out how to compare lambda expressions...
        ))

(define (expr-compare x y)
  (cond [(empty? y) '()]
        [(compare-equality x y)]
        ;now how to figure out how to compare lambda expressions...
        ))

(display (expr-compare 12 "cunt"))
