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