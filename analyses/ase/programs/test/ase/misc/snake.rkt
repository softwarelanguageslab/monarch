#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; data
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(struct posn (x y))
(struct snake (dir segs))
(struct world (snake food))
(define DIR/C (one-of/c 'up 'down 'left 'right))
(define POSN/C (struct/c posn real?/c real?/c))
(define SNAKE/C (struct/c snake DIR/C (and/c cons?/c (listof POSN/C))))
(define WORLD/C (struct/c world SNAKE/C POSN/C))

(define WORLD (world (snake 'right (cons (posn 5 3) empty))
                       (posn 8 12)))

(provide (contract-out
  [WORLD WORLD/C]
  ))


