(progn
  (declare 'reduce (lambda '(f l) '((lambda '(f a l) '(cond (l (@ f (f a (car l)) (cdr l))) (t a))) f (f (car l) (car (cdr l))) (cdr (cdr l)))))
  (declare 'mapcar (lambda '(f l) '(cond ((null l) nil) (t (cons (f (car l)) (@ f (cdr l)))))))
  (declare 'desc (lambda '(o l) '(cond ((null o) l) ((eq (car o) 'a) (@ (cdr o) (car l))) ((eq (car o) 'd) (@ (cdr o) (cdr l))))))
  (declare 'nsplice (lambda '(l) '(reduce nconc l)))
  (declare 'quotation (lambda '(a) '(list 'quote a)))
  (declare 'decf (lambda '(n) '(set n (- n 1))))
  (declare 'nth (lambda '(n l) '(cond ((null l) nil) ((eq n 0) (car l)) (t (@ (- n 1) (cdr l))))))
  (declare 'randelt (lambda '(l) '(nth (random (length l)) l)))
  (declare 'iota (lambda '(m) '(progn (define 'm m) ((lambda '(n) '(cond ((eq n m) nil) (t (cons n (@ (+ n 1)))))) 0))))
  t)
