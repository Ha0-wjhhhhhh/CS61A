(define (over-or-under num1 num2)
  'YOUR-CODE-HERE
  (if (< num1 num2)
      -1
      (if (> num1 num2)
          1
          0)))

(define (make-adder num)
  'YOUR-CODE-HERE
  (lambda (inc) (+ num inc)))

(define (composed f g)
  'YOUR-CODE-HERE
  (lambda (x) (f (g x))))

(define lst '((1) 2 (3 4) 5))

(define (remove item lst)
  'YOUR-CODE-HERE
 (if (null? lst) 
     nil 
     (if (list? (car lst))
         (cons (remove item (car lst)) (remove item (cdr lst)))
         (if (= (car lst) item)
             (remove item (cdr lst))
             (cons (car lst) (remove item (cdr lst)))
             ))))
