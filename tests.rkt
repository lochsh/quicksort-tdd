#lang racket

(require rackunit "main.rkt")

(check-equal? (qsort null) null "Sorting an empty list returns an empty list.")
(check-equal? (qsort (list 1)) (list 1) "Sorting a single-item list returns that list.")
(check-equal? (qsort (list 1 2)) (list 1 2) "Doesn't un-sort lists.")
(check-equal? (qsort (list 2 1)) (list 1 2) "Sorts list of length two.")
(check-equal? (qsort (list 1 2 3)) (list 1 2 3) "Doesn't un-sort lists longer than two items.")
(check-equal? (qsort (list 1 3 2)) (list 1 2 3) "Sorts list of length greater than two.")
(check-equal? (qsort (list 3 1 2)) (list 1 2 3) "Sorts lists of length greater than two.")
(check-equal? (qsort (list 3 2 1)) (list 1 2 3) "Sorts lists of legnth greter than two.")
(check-equal? (qsort (list 1 2 3 4)) (list 1 2 3 4) "Doesn't unsort lists of length greater than three.")
(check-equal? (qsort (list 3 1 4 2)) (list 1 2 3 4) "Sorts list of length four.")
(check-equal? (qsort (list 3 3 4 2)) (list 2 3 3 4) "Keeps repeated elements")
(check-equal? (qsort (list 65 0 -1 8 7 3 2)) (list -1 0 2 3 7 8 65) "Sorts generic list of integers, some negative.")
