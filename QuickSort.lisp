(defun less (x L)
  (remove-if-not
   (lambda (e) (< e x))
   L))

(defun equaled (x L)
  (remove-if-not
   (lambda (e) (= e x))
   L))

(defun greater (x L)
  (remove-if-not
   (lambda (e) (> e x))
   L))

(defun quicksort (list &aux (pivot (car list)) )
 (if (cdr list)
     (nconc (quicksort (less pivot list))
            (equaled pivot list)
            (quicksort (greater pivot list)))
     list))