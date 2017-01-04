;;;;Calculate experience points for a given level in Tibia
;;;;The experience formula is:
;;;;(50lvl^3)/3  -  100lvl^2  +  850lvl/3  -  200
(defun ExpTibiaCalc (level)
	   (setq first (/ (* 50 (expt level 3)) 3.0))
	   (setq second (* 100 (expt level 2)))
	   (setq third (/ (* 850 level) 3.0))
	   (setq exp (- (+ (- first second) third) 200))
	   (format t "Experience needed for level ~S is ~S~% " level exp ))