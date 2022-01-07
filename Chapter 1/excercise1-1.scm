#| Exercise 1.1
Below is a sequence of expressions. What is the result printed by the
interpreter in response to each expression? Assume that the sequence is to be
evaluated in the order in which it is presented.

|#

10 
;; 10

(+ 5 3 4) 
;; 12

(- 9 1) 
;; 8

(/ 6 2)
;; 3

(+ (* 2 4) (- 4 6))
;; -16

(define a 3)
;; return value a (now defined = 3)

(define b (+ a 1))
;; return value b (now defined = 4)

(+ a b (* a b))
;; 19

(= a b)
;; false (or #f)

(if (and (> b a) (< b (* a b)))
	b 
	a)
;; true => b => 4

(cond ((= a 4) 6)
	((= b 4) (+ 6 7 a))
	(else 25))
;; second cond is correct => 16

(+ 2 (if (> b a) b a))
;; 6

(* (cond ((> a b) a) 
		((< a b) b)
		(else -1)) 
	(+ a 1))
;; 16