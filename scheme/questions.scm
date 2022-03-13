(define (caar x) (car (car x)))

(define (cadr x) (car (cdr x)))

(define (cdar x) (cdr (car x)))

(define (cddr x) (cdr (cdr x)))

(define (pair2enumerate s base)
  (cond 
    ((null? s)
     nil)
    ((null? (cdr s))
     (cons (cons base s) nil))
    (else
     (cons (cons base (cons (car s) nil))
           (pair2enumerate (cdr s) (+ base 1))))))

; ; Problem 15
; ; Returns a list of two-element lists
(define (enumerate s) (pair2enumerate s 0))

; END PROBLEM 15
; ; Problem 16
; ; Merge two lists LIST1 and LIST2 according to INORDER? and return
; ; the merged lists.
(define (merge inorder? list1 list2)
  (cond 
    ((and (null? list1) (null? list2))
     nil)
    ((and (null? list1) (not (null? list2)))
     list2)
    ((and (null? list2) (not (null? list1)))
     list1)
    (else
     (if (inorder? (car list1) (car list2))
         (cons (car list1)
               (cons (car list2)
                     (merge inorder? (cdr list1) (cdr list2))))
         (cons (car list2)
               (cons (car list1)
                     (merge inorder? (cdr list1) (cdr list2))))))))

; END PROBLEM 16
; ; Optional Problem 1
; ; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))

(define define? (check-special 'define))

(define quoted? (check-special 'quote))

(define let? (check-special 'let))

; ; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond 
    ((atom? expr)
     ; BEGIN PROBLEM 17
     'replace-this-line
     ; END PROBLEM 17
    )
    ((quoted? expr)
     ; BEGIN PROBLEM 17
     'replace-this-line
     ; END PROBLEM 17
    )
    ((or (lambda? expr) (define? expr))
     (let ((form (car expr))
           (params (cadr expr))
           (body (cddr expr)))
       ; BEGIN PROBLEM 17
       'replace-this-line
       ; END PROBLEM 17
     ))
    ((let? expr)
     (let ((values (cadr expr))
           (body (cddr expr)))
       ; BEGIN PROBLEM 17
       'replace-this-line
       ; END PROBLEM 17
     ))
    (else
     ; BEGIN PROBLEM 17
     'replace-this-line
     ; END PROBLEM 17
    )))

; ; Problem 21 (optional)
; ; Draw the hax image using turtle graphics.
(define (hax d k)
  ; BEGIN Question 21
  'replace-this-line)

; END Question 21
