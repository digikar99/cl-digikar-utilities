(load "digikar-utilities")
(use-package :digikar-utilities)

(print "digikar-utilities loaded.")

(defvar myvar 555)
(loop for cmd in
      (list (make-vector '(1 2 3))
            (join-using " " '("aa" "b"))
            #(1 2 3 (+ 5 6) t myvar)
	    (make-hash '(("a" 1) (5 25)))
	    #{"b" 1, 5 "five", "5+6" (+ 5 6), 'a 7, 'myvar myvar})
      do (print cmd))

      