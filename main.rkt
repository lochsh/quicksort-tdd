#lang racket

(define (qsort lst)
  (cond
    [(> 2 (length lst)) lst]
    [else
      (let*
        ([pivot (car lst)]
         [pre (filter (lambda (x) (>= pivot x)) (cdr lst))]
         [post (filter (lambda (x) (< pivot x)) (cdr lst))])
        (append (qsort pre) (list pivot) (qsort post)))]))

(provide qsort)
