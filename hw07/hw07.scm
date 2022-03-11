(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ordered? s)
  (if (null? s)
      #t
      (if (null? (cdr s))
          #t
          (if (> (car s) (cadr s))
              #f
              (ordered? (cdr s))))))

(define (square x) (* x x))

(define (pow base exp)
  (cond 
    ((= base 1)
     1)
    ((= exp 0)
     1)
    ((= exp 1)
     base)
    ((= exp 2)
     (* base base))
    ((odd? exp)
     (* base (pow (pow base (/ (- exp 1) 2)) 2)))
    (else
     (pow (pow base (/ exp 2)) 2))))
