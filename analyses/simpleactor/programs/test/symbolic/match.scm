;; This program checks whether `match` expressions 
;; introduce interesting constraints.
(letrec 
  ((x (fresh (if (bool-top) 'foo 'bar))))
  (letrec
    ((z (match x
         (('foo 10)
          ('bar 20)))))

    ;; The idea is that if `z` is 10
    ;; then `x` should equal to `foo`. 
    ;;
    ;; If `z` is 20 then `x` should equal 
    ;; `bar`. Hence, only the answer `42`
    ;; should be possible.
    (if (= z 10)
        (if (eq? x 'foo)
            42
            43)
        (if (= z 20)
            (if (eq? x 'bar)
                42
                43)
            43))))
