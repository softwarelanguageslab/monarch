(letrec ((any? (lambda (v) #t))
         (meta (lambda (v) v))
         (member
          (lambda (v lst)
            (begin
              (match
               lst
               ((() #f) ((pair v1 vs) (if (eq? v v1) #t (member v vs))))))))
         (unconstrained/c #f)
         (actor? (lambda (k j) (lambda (v) v)))
         (nonzero? (lambda (v) (not (= v 0)))))
  (begin
    (struct image ())
    (define image/c (struct/c image))
    (define (circle r m c) (image))
    (define (empty-scene w h) (image))
    (define (place-image i₁ r c i₂) (image))
    (struct posn (x y))
    (define (posn=? p1 p2)
      (and (= (posn-x p1) (posn-x p2)) (= (posn-y p1) (posn-y p2))))
    (struct snake (dir segs))
    (struct world (snake food))
    (define DIR/C (one-of/c 'up 'down 'left 'right))
    (define POSN/C (struct/c posn real? real?))
    (define SNAKE/C (struct/c snake DIR/C (and/c cons? (listof POSN/C))))
    (define WORLD/C (struct/c world SNAKE/C POSN/C))
    (define GRID-SIZE 30)
    (define BOARD-HEIGHT 20)
    (define BOARD-WIDTH 30)
    (define BOARD-HEIGHT-PIXELS (* GRID-SIZE BOARD-HEIGHT))
    (define BOARD-WIDTH-PIXELS (* GRID-SIZE BOARD-WIDTH))
    (define BACKGROUND (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS))
    (define SEGMENT-RADIUS (/ GRID-SIZE 2))
    (define SEGMENT-IMAGE (circle SEGMENT-RADIUS solid red))
    (define FOOD-RADIUS SEGMENT-RADIUS)
    (define FOOD-IMAGE (circle FOOD-RADIUS solid green))
    (define WORLD (world (snake 'right (cons (posn 5 3) empty)) (posn 8 12)))
    (define (snake-wall-collide? snk) (head-collide? (car (snake-segs snk))))
    (define (head-collide? p)
      (or (<= (posn-x p) 0)
          (>= (posn-x p) BOARD-WIDTH)
          (<= (posn-y p) 0)
          (>= (posn-y p) BOARD-HEIGHT)))
    (define (snake-self-collide? snk)
      (segs-self-collide? (car (snake-segs snk)) (cdr (snake-segs snk))))
    (define (segs-self-collide? h segs)
      (cond
       ((empty? segs) #f)
       (else (or (posn=? (car segs) h) (segs-self-collide? h (cdr segs))))))
    (define (cut-tail segs)
      (let ((r (cdr segs)))
        (cond ((empty? r) empty) (else (cons (car segs) (cut-tail r))))))
    (define (next-head seg dir)
      (cond
       ((equal? 'right dir) (posn (add1 (posn-x seg)) (posn-y seg)))
       ((equal? 'left dir) (posn (sub1 (posn-x seg)) (posn-y seg)))
       ((equal? 'down dir) (posn (posn-x seg) (sub1 (posn-y seg))))
       (else (posn (posn-x seg) (add1 (posn-y seg))))))
    (define (snake-slither snk)
      (let ((d (snake-dir snk)))
        (snake
         d
         (cons
          (next-head (car (snake-segs snk)) d)
          (cut-tail (snake-segs snk))))))
    (define (snake-grow snk)
      (let ((d (snake-dir snk)))
        (snake
         d
         (cons (next-head (car (snake-segs snk)) d) (snake-segs snk)))))
    (define (world->world w)
      (cond
       ((eating? w) (snake-eat w))
       (else (world (snake-slither (world-snake w)) (world-food w)))))
    (define (eating? w)
      (posn=? (world-food w) (car (snake-segs (world-snake w)))))
    (define (snake-change-direction snk dir) (snake dir (snake-segs snk)))
    (define (world-change-dir w dir)
      (world (snake-change-direction (world-snake w) dir) (world-food w)))
    (define (snake-eat w)
      (world
       (snake-grow (world-snake w))
       (posn (- BOARD-WIDTH 1) (- BOARD-HEIGHT 1))))
    (define (handle-key w ke)
      (cond
       ((equal? ke w) (world-change-dir w 'up))
       ((equal? ke s) (world-change-dir w 'down))
       ((equal? ke a) (world-change-dir w 'left))
       ((equal? ke d) (world-change-dir w 'right))
       (else w)))
    (define (game-over? w)
      (or (snake-wall-collide? (world-snake w))
          (snake-self-collide? (world-snake w))))
    (define (world->scene w)
      (snake+scene (world-snake w) (food+scene (world-food w) BACKGROUND)))
    (define (food+scene f scn)
      (place-image-on-grid FOOD-IMAGE (posn-x f) (posn-y f) scn))
    (define (place-image-on-grid img x y scn)
      (place-image
       img
       (* GRID-SIZE x)
       (- BOARD-HEIGHT-PIXELS (* GRID-SIZE y))
       scn))
    (define (snake+scene snk scn) (segments+scene (snake-segs snk) scn))
    (define (segments+scene segs scn)
      (cond
       ((empty? segs) scn)
       (else (segments+scene (cdr segs) (segment+scene (car segs) scn)))))
    (define (segment+scene seg scn)
      (place-image-on-grid SEGMENT-IMAGE (posn-x seg) (posn-y seg) scn))
    (begin
      ((((lambda (j3985 k3986 f3987)
           (lambda (g3983 g3984)
             (boolean?
              j3985
              k3986
              (f3987 (POSN/C j3985 k3986 g3983) (POSN/C j3985 k3986 g3984)))))
         'module
         'importer
         posn=?)
        (input)
        (input))
       (WORLD/C 'module 'importer WORLD)
       (image/c 'module 'importer BACKGROUND)
       (image/c 'module 'importer FOOD-IMAGE)
       (image/c 'module 'importer SEGMENT-IMAGE)
       (real? 'module 'importer GRID-SIZE)
       (real? 'module 'importer BOARD-HEIGHT-PIXELS)
       (real? 'module 'importer BOARD-WIDTH)
       (real? 'module 'importer BOARD-HEIGHT)
       (((lambda (j3989 k3990 f3991)
           (lambda (g3988)
             (boolean? j3989 k3990 (f3991 (SNAKE/C j3989 k3990 g3988)))))
         'module
         'importer
         snake-wall-collide?)
        (input))
       (((lambda (j3993 k3994 f3995)
           (lambda (g3992)
             (boolean? j3993 k3994 (f3995 (SNAKE/C j3993 k3994 g3992)))))
         'module
         'importer
         snake-self-collide?)
        (input))
       (((lambda (j3997 k3998 f3999)
           (lambda (g3996)
             ((listof POSN/C)
              j3997
              k3998
              (f3999 ((and/c cons? (listof POSN/C)) j3997 k3998 g3996)))))
         'module
         'importer
         cut-tail)
        (input))
       (((lambda (j4001 k4002 f4003)
           (lambda (g4000)
             (SNAKE/C j4001 k4002 (f4003 (SNAKE/C j4001 k4002 g4000)))))
         'module
         'importer
         snake-slither)
        (input))
       (((lambda (j4005 k4006 f4007)
           (lambda (g4004)
             (SNAKE/C j4005 k4006 (f4007 (SNAKE/C j4005 k4006 g4004)))))
         'module
         'importer
         snake-grow)
        (input))
       (((lambda (j4010 k4011 f4012)
           (lambda (g4008 g4009)
             (WORLD/C
              j4010
              k4011
              (f4012 (WORLD/C j4010 k4011 g4008) (DIR/C j4010 k4011 g4009)))))
         'module
         'importer
         world-change-dir)
        (input)
        (input))
       (((lambda (j4014 k4015 f4016)
           (lambda (g4013)
             (WORLD/C j4014 k4015 (f4016 (WORLD/C j4014 k4015 g4013)))))
         'module
         'importer
         world->world)
        (input))
       (((lambda (j4019 k4020 f4021)
           (lambda (g4017 g4018)
             (WORLD/C
              j4019
              k4020
              (f4021
               (WORLD/C j4019 k4020 g4017)
               (string? j4019 k4020 g4018)))))
         'module
         'importer
         handle-key)
        (input)
        (input))
       (((lambda (j4023 k4024 f4025)
           (lambda (g4022)
             (boolean? j4023 k4024 (f4025 (WORLD/C j4023 k4024 g4022)))))
         'module
         'importer
         game-over?)
        (input))
       (((lambda (j4027 k4028 f4029)
           (lambda (g4026)
             (image/c j4027 k4028 (f4029 (WORLD/C j4027 k4028 g4026)))))
         'module
         'importer
         world->scene)
        (input))
       (((lambda (j4032 k4033 f4034)
           (lambda (g4030 g4031)
             (image/c
              j4032
              k4033
              (f4034 (POSN/C j4032 k4033 g4030) (image/c j4032 k4033 g4031)))))
         'module
         'importer
         food+scene)
        (input)
        (input))
       (((lambda (j4039 k4040 f4041)
           (lambda (g4035 g4036 g4037 g4038)
             (image/c
              j4039
              k4040
              (f4041
               (image/c j4039 k4040 g4035)
               (real? j4039 k4040 g4036)
               (real? j4039 k4040 g4037)
               (image/c j4039 k4040 g4038)))))
         'module
         'importer
         place-image-on-grid)
        (input)
        (input)
        (input)
        (input))
       (((lambda (j4044 k4045 f4046)
           (lambda (g4042 g4043)
             (image/c
              j4044
              k4045
              (f4046
               (SNAKE/C j4044 k4045 g4042)
               (image/c j4044 k4045 g4043)))))
         'module
         'importer
         snake+scene)
        (input)
        (input))
       (((lambda (j4049 k4050 f4051)
           (lambda (g4047 g4048)
             (image/c
              j4049
              k4050
              (f4051
               ((listof POSN/C) j4049 k4050 g4047)
               (image/c j4049 k4050 g4048)))))
         'module
         'importer
         segments+scene)
        (input)
        (input))
       (((lambda (j4054 k4055 f4056)
           (lambda (g4052 g4053)
             (image/c
              j4054
              k4055
              (f4056 (POSN/C j4054 k4055 g4052) (image/c j4054 k4055 g4053)))))
         'module
         'importer
         segment+scene)
        (input)
        (input))))))
