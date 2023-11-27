(declare-datatypes ()
                   ((V (VInteger (unwrap-VInteger Int))
                       (VReal    (unwrap-VReal    Real))
                       (VNil)
                       (VBool    (unwrap-bool    Bool))
                       (VString  (unwrap-string  String))
                       (VSymbol  (unwrap-symbol String))
                       (VError))))

(define-fun boolean?/v ((b V)) V
            (VBool (is-VBool b)))

(define-fun null?/v ((n V)) V
            (VBool (is-VNil n)))

(declare-fun fresh () V)

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
(declare-fun string-length (V) V) 

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


(define-fun not/v ((a V)) V
            (ite (is-VBool a) (VBool (not (unwrap-bool a))) VError))

(define-fun true?/v ((n V)) Bool
            (ite (is-VBool n) (unwrap-bool n) false))
(define-fun false?/v ((b V)) Bool
            (ite (is-VBool b) (not (unwrap-bool b)) false))

