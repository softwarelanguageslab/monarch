;; enable "success" messages after every command/query

(set-option :pp.decimal true)  ; Enable decimal output
(declare-datatypes ()
                   ((Span (KnownSpan (span-line Int) (span-column Int))
                          (UnknownSpan))))

(declare-datatypes ()
                   ((V (VInteger (unwrap-VInteger Int))
                       (VReal    (unwrap-VReal    Real))
                       (VNil)
                       (VPair) ;; type marker only, since hepa is not modelled
                       (VBool    (unwrap-bool     Bool))
                       (VString  (unwrap-string String))
                       (VSymbol  (unwrap-symbol String))
                       (VActor   (actor-identity Span))  ;; todo is this the right representation for the identity?
                       (VBeh)
                       (VMon)
                       (VError))))

(define-fun actor?/v ((a V)) V
            (VBool (is-VActor a)))

(define-fun boolean?/v ((b V)) V
            (VBool (is-VBool b)))

(define-fun null?/v ((n V)) V
            (VBool (is-VNil n)))

(define-fun pair?/v ((p V)) V
            (VBool (is-VPair p)))

;; XXX: re-enable these functions
; (declare-fun fresh () V)

(define-fun string?/v ((s V)) V
            (VBool (is-VString s)))

(define-fun integer?/v ((n V)) V
            (VBool (is-VInteger n)))

(define-fun number?/v ((n V)) V 
            (VBool (or (is-VReal n) (is-VInteger n))))

(define-fun real?/v ((n V)) V
            ; where we expect a real, we also accept an integer
            (VBool (or (is-VInteger n) (is-VReal n))))

(define-fun any?/v ((n V)) V 
            (VBool true))
;; XXX: re-enable these functions
; (declare-fun string-length (V) V) 

(define-fun +/v ((a V) (b V)) V
            (ite (and (is-VInteger a) (is-VInteger b)) 
                 (VInteger (+ (unwrap-VInteger a) (unwrap-VInteger b)))
                 (ite (and (is-VReal a) (is-VInteger b))
                      (VReal (+ (unwrap-VReal a) (unwrap-VInteger b)))
                      (ite (and (is-VInteger a) (is-VReal b))
                           (VReal (+ (unwrap-VInteger a) (unwrap-VReal b)))
                           (ite (and (is-VReal a) (is-VReal b))
                                (VReal (+ (unwrap-VReal a) (unwrap-VReal b)))
                                VError)))))

(define-fun -/v ((a V) (b V)) V
            (ite (and (is-VInteger a) (is-VInteger b)) 
                 (VInteger (- (unwrap-VInteger a) (unwrap-VInteger b)))
                 (ite (and (is-VReal a) (is-VInteger b))
                      (VReal (- (unwrap-VReal a) (unwrap-VInteger b)))
                      (ite (and (is-VInteger a) (is-VReal b))
                           (VReal (- (unwrap-VInteger a) (unwrap-VReal b)))
                           (ite (and (is-VReal a) (is-VReal b))
                                (VReal (- (unwrap-VReal a) (unwrap-VReal b)))
                                VError)))))

(define-fun */v ((a V) (b V)) V
            (ite (and (is-VInteger a) (is-VInteger b)) 
                 (VInteger (* (unwrap-VInteger a) (unwrap-VInteger b)))
                 (ite (and (is-VReal a) (is-VInteger b))
                      (VReal (* (unwrap-VReal a) (unwrap-VInteger b)))
                      (ite (and (is-VInteger a) (is-VReal b))
                           (VReal (* (unwrap-VInteger a) (unwrap-VReal b)))
                           (ite (and (is-VReal a) (is-VReal b))
                                (VReal (* (unwrap-VReal a) (unwrap-VReal b)))
                                VError)))))

(define-fun //v ((a V) (b V)) V
            (ite (and (is-VInteger a) (is-VInteger b)) 
                 (VInteger (/ (unwrap-VInteger a) (unwrap-VInteger b)))
                 (ite (and (is-VReal a) (is-VInteger b))
                      (VReal (/ (unwrap-VReal a) (unwrap-VInteger b)))
                      (ite (and (is-VInteger a) (is-VReal b))
                           (VReal (/ (unwrap-VInteger a) (unwrap-VReal b)))
                           (ite (and (is-VReal a) (is-VReal b))
                                (VReal (/ (unwrap-VReal a) (unwrap-VReal b)))
                                VError)))))
(define-fun =/v ((a V) (b V)) V
            (ite (and (is-VInteger a) (is-VInteger b)) 
                 (VBool (= (unwrap-VInteger a) (unwrap-VInteger b)))
                 (ite (and (is-VReal a) (is-VInteger b))
                      (VBool (= (unwrap-VReal a) (unwrap-VInteger b)))
                      (ite (and (is-VInteger a) (is-VReal b))
                           (VBool (= (unwrap-VInteger a) (unwrap-VReal b)))
                           (ite (and (is-VReal a) (is-VReal b))
                                (VBool (= (unwrap-VReal a) (unwrap-VReal b)))
                                VError)))))

(define-fun </v ((a V) (b V)) V
            (ite (and (is-VInteger a) (is-VInteger b)) 
                 (VBool (< (unwrap-VInteger a) (unwrap-VInteger b)))
                 (ite (and (is-VReal a) (is-VInteger b))
                      (VBool (< (unwrap-VReal a) (unwrap-VInteger b)))
                      (ite (and (is-VInteger a) (is-VReal b))
                           (VBool (< (unwrap-VInteger a) (unwrap-VReal b)))
                           (ite (and (is-VReal a) (is-VReal b))
                                (VBool (< (unwrap-VReal a) (unwrap-VReal b)))
                                VError)))))

(define-fun >/v ((a V) (b V)) V
            (ite (and (is-VInteger a) (is-VInteger b)) 
                 (VBool (> (unwrap-VInteger a) (unwrap-VInteger b)))
                 (ite (and (is-VReal a) (is-VInteger b))
                      (VBool (> (unwrap-VReal a) (unwrap-VInteger b)))
                      (ite (and (is-VInteger a) (is-VReal b))
                           (VBool (> (unwrap-VInteger a) (unwrap-VReal b)))
                           (ite (and (is-VReal a) (is-VReal b))
                                (VBool (> (unwrap-VReal a) (unwrap-VReal b)))
                                VError)))))

(define-fun <=/v ((a V) (b V)) V
            (ite (and (is-VInteger a) (is-VInteger b)) 
                 (VBool (<= (unwrap-VInteger a) (unwrap-VInteger b)))
                 (ite (and (is-VReal a) (is-VInteger b))
                      (VBool (<= (unwrap-VReal a) (unwrap-VInteger b)))
                      (ite (and (is-VInteger a) (is-VReal b))
                           (VBool (<= (unwrap-VInteger a) (unwrap-VReal b)))
                           (ite (and (is-VReal a) (is-VReal b))
                                (VBool (<= (unwrap-VReal a) (unwrap-VReal b)))
                                VError)))))

(define-fun >=/v ((a V) (b V)) V
            (ite (and (is-VInteger a) (is-VInteger b)) 
                 (VBool (>= (unwrap-VInteger a) (unwrap-VInteger b)))
                 (ite (and (is-VReal a) (is-VInteger b))
                      (VBool (>= (unwrap-VReal a) (unwrap-VInteger b)))
                      (ite (and (is-VInteger a) (is-VReal b))
                           (VBool (>= (unwrap-VInteger a) (unwrap-VReal b)))
                           (ite (and (is-VReal a) (is-VReal b))
                                (VBool (>= (unwrap-VReal a) (unwrap-VReal b)))
                                VError)))))

;; TODO: implement equality for the other datatypes
(define-fun equal?/v ((a V) (b V)) V 
            (=/v a b))


(define-fun not/v ((a V)) V
            (ite (is-VBool a) (VBool (not (unwrap-bool a))) VError))

(define-fun true?/v ((n V)) Bool
            (ite (is-VBool n) (unwrap-bool n) false))
(define-fun false?/v ((b V)) Bool
            (ite (is-VBool b) (not (unwrap-bool b)) false))

(define-fun or?/v ((a V) (b V)) V
            (ite (true?/v a)
                 a
                 (ite (true?/v b)
                      b
                      (VBool false))))

(define-fun and?/v ((a V) (b V)) V
            (ite (true?/v a)
                 (ite (true?/v b)
                      b
                      (VBool false))
                 (VBool false)))

(set-option :print-success true)
