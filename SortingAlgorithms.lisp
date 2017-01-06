(defun insertionSort (listV)
	   (loop for x from 0 to (- (length listV) 1)
	      do
	      (setq y x)
	      (setq temp (nth y listV))	
	      (loop while (and  (> y 0)
				(< temp (nth (- y 1) listV)))
		 do 
		   (setf (nth y listV) (nth (- y 1) listV))
		   (setf y (- y 1)))
		(setf (nth y listV) temp)) 
	     listV)


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