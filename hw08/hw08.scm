(define (my-filter func lst)
  (cond 
    ((null? lst)
     nil)
    ((list? (car lst))
     (cons (my-filter func (car lst))
           (my-filter func (cdr lst))))
    (else
     (if (func (car lst))
         (cons (car lst) (my-filter func (cdr lst)))
         (my-filter func (cdr lst))))))

(define (interleave s1 s2)
  (cond 
    ((and (null? s1) (null? s2))
     nil)
    ((and (null? s1) (not (null? s2)))
     s2)
    ((and (not (null? s1)) (null? s2))
     s1)
    ((and (not (null? s1)) (not (null? s2)))
     (append (cons (car s1) (cons (car s2) nil))
             (interleave (cdr s1) (cdr s2))))))

(define (accumulate merger start n term)
  (if (= n 1)
      (merger (term n) start)
      (merger (term n)
              (accumulate merger start (- n 1) term))))

(define (no-repeats lst)
  (cond 
    ((null? lst)
     nil)
    ((null? (cdr lst))
     lst)
    (else
     (cons (car lst)
           (no-repeats
            (my-filter (lambda (x) (not (= (car lst) x)))
                       (cdr lst)))))))
