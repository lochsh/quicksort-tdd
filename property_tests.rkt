#lang racket

(require rackunit "main.rkt")
(require quickcheck)

(define list-stays-list
  (property ([lst (arbitrary-list arbitrary-integer)])
            (list? (qsort lst))))
(quickcheck list-stays-list)
