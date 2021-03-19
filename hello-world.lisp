(print (+ 3 2))

(list 'batman 'superman)

(cons 'aquaman '(batman superman))

(format t "is list? ~d ~%" (listp '(superman batman flash aquaman)))

(print (append '(lisp) '(red blue)))

(defvar listy (append '(red blue) '(1 2 3)))

(print listy)

(defun hello()
  (print "hello"))

(hello)

(defun get-avg (a b )
  (/ (+ a b) 2))

(print (get-avg 2 3.0))

(defun print-list (w x &optional y z)
  (format t "list = ~a ~%" (list w x y z)))

(print-list 1 2 3)



(defvar *total* 0)

(defun sum (&rest nums)
  (dolist (num nums)
    (setf *total* (+ *total* num)))
  (format t "sum = ~a ~%" *total*)
  *total*)


(format t "final print = ~a ~%" (sum 1 3 4 2 6 8))

(print-list :a 1 :b 2)

(defun difference (num1 num2)
  (return-from difference(- num1 num2)))

(print (difference 3 2))
(print "________________")


(format t "mapcar: ~a ~%" (mapcar #'listp '('(a b c) '(1 2 3) 123)))

(flet ((triple-it (num)
  (* num 3))
  (halve-it (num)
  (/ num 2.0)))
  (format t "tripled and halved: ~a ~%" (triple-it (halve-it 3))))

