#lang racket

(write "-----1) RECURSIVA CLÁSICA Ackerman: -----")
(newline)
(define (A N M)
  (cond
    [(= M 0) 0]
    [(= N 0)(* 2 M)]
    [(= M 1) 2]
    [else (A (- N 1) (A N (- M 1)))]))
  (A 1 10)
  (A 2 4)
  (A 3 3)
(newline)
(write "2)----- Sucesion de Padovan: -----")
(newline)
(write "recursion: ")
(newline)
(define (Pad n)
	(cond
        ((< n 3) 1)
	(else (+ (Pad(- n 2)) (Pad(- n 3))))
	)
)

(define (Padpr n)
  (for ([i (in-range 0 n)])
    ( display (Pad i))
      (write "-") 
     )
)

(Padpr 10)(newline)
(Padpr 12)(newline)
(Padpr 21)(newline)(newline)




(write "recursion lineal: ")(newline)
(define (PadLin n)(Plineal-iter  1 1 1 0 n))

(define (Plineal-iter tras ant result i n)
 (if( >= i n)
    tras
    (Plineal-iter  ant result (+ ant tras)  (+ i 1) n )
    
   )
)

(define (PadLinR n)
  (for ([i (in-range 0 n)])
    ( display (PadLin i))
      (write " ") 
     )
)

(PadLinR 10)(newline)
(PadLinR 12)(newline)
(PadLinR 21) (newline)(newline)

