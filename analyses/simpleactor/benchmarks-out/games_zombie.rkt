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
    (define (empty-scene w h) (image))
    (define (place-image i₁ r c i₂) (image))
    (define (circle r m c) (image))
    (define (min x y) (if (<= x y) x y))
    (define (max x y) (if (>= x y) x y))
    (define (abs x) (if (>= x 0) x (- 0 x)))
    (define (sqr x) (* x x))
    (define WIDTH 400)
    (define HEIGHT 400)
    (define MT-SCENE (empty-scene WIDTH HEIGHT))
    (define PLAYER-SPEED 4)
    (define ZOMBIE-SPEED 2)
    (define ZOMBIE-RADIUS 20)
    (define PLAYER-RADIUS 20)
    (define PLAYER-IMG (circle PLAYER-RADIUS solid green))
    (define posn/c
      (->d
       (one-of/c 'x 'y 'posn 'move-toward/speed 'draw-on/image 'dist)
       (lambda (msg)
         (cond
          ((equal? msg 'x)
           (lambda (j3983 k3984 f3985)
             (lambda () (real? j3983 k3984 (f3985)))))
          ((equal? msg 'y)
           (lambda (j3986 k3987 f3988)
             (lambda () (real? j3986 k3987 (f3988)))))
          ((equal? msg 'posn)
           (lambda (j3989 k3990 f3991)
             (lambda () (posn/c j3989 k3990 (f3991)))))
          ((equal? msg 'move-toward/speed)
           (lambda (j3994 k3995 f3996)
             (lambda (g3992 g3993)
               (posn/c
                j3994
                k3995
                (f3996
                 (posn/c j3994 k3995 g3992)
                 (real? j3994 k3995 g3993))))))
          ((equal? msg 'draw-on/image)
           (lambda (j3999 k4000 f4001)
             (lambda (g3997 g3998)
               (image?
                j3999
                k4000
                (f4001
                 (image? j3999 k4000 g3997)
                 (image? j3999 k4000 g3998))))))
          ((equal? msg 'dist)
           (lambda (j4003 k4004 f4005)
             (lambda (g4002)
               (real? j4003 k4004 (f4005 (posn/c j4003 k4004 g4002))))))
          (else error)))))
    (define player/c
      (->d
       (one-of/c 'posn 'move-toward 'draw-on)
       (lambda (msg)
         (cond
          ((equal? msg 'posn)
           (lambda (j4006 k4007 f4008)
             (lambda () (posn/c j4006 k4007 (f4008)))))
          ((equal? msg 'move-toward)
           (lambda (j4010 k4011 f4012)
             (lambda (g4009)
               (player/c j4010 k4011 (f4012 (posn/c j4010 k4011 g4009))))))
          ((equal? msg 'draw-on)
           (lambda (j4014 k4015 f4016)
             (lambda (g4013)
               (image? j4014 k4015 (f4016 (image? j4014 k4015 g4013))))))
          (else error)))))
    (define zombie/c
      (->d
       (one-of/c 'posn 'draw-on/color 'touching? 'move-toward)
       (lambda (msg)
         (cond
          ((equal? msg 'posn)
           (lambda (j4017 k4018 f4019)
             (lambda () (posn/c j4017 k4018 (f4019)))))
          ((equal? msg 'draw-on/color)
           (lambda (j4022 k4023 f4024)
             (lambda (g4020 g4021)
               (image?
                j4022
                k4023
                (f4024
                 (string? j4022 k4023 g4020)
                 (image? j4022 k4023 g4021))))))
          ((equal? msg 'touching?)
           (lambda (j4026 k4027 f4028)
             (lambda (g4025)
               (boolean? j4026 k4027 (f4028 (posn/c j4026 k4027 g4025))))))
          ((equal? msg 'move-toward)
           (lambda (j4030 k4031 f4032)
             (lambda (g4029)
               (zombie/c j4030 k4031 (f4032 (posn/c j4030 k4031 g4029))))))
          (else error)))))
    (define horde/c
      (->d
       (one-of/c 'dead 'undead 'draw-on 'touching? 'move-toward 'eat-brains)
       (lambda (msg)
         (cond
          ((equal? msg 'dead)
           (lambda (j4033 k4034 f4035)
             (lambda () (zombies/c j4033 k4034 (f4035)))))
          ((equal? msg 'undead)
           (lambda (j4036 k4037 f4038)
             (lambda () (zombies/c j4036 k4037 (f4038)))))
          ((equal? msg 'draw-on)
           (lambda (j4040 k4041 f4042)
             (lambda (g4039)
               (image? j4040 k4041 (f4042 (image? j4040 k4041 g4039))))))
          ((equal? msg 'touching?)
           (lambda (j4044 k4045 f4046)
             (lambda (g4043)
               (boolean? j4044 k4045 (f4046 (posn/c j4044 k4045 g4043))))))
          ((equal? msg 'move-toward)
           (lambda (j4048 k4049 f4050)
             (lambda (g4047)
               (horde/c j4048 k4049 (f4050 (posn/c j4048 k4049 g4047))))))
          ((equal? msg 'eat-brains)
           (lambda (j4051 k4052 f4053)
             (lambda () (horde/c j4051 k4052 (f4053)))))
          (else error)))))
    (define zombies/c
      (->d
       (one-of/c 'move-toward 'draw-on/color 'touching? 'kill-all)
       (lambda (msg)
         (cond
          ((equal? msg 'move-toward)
           (lambda (j4055 k4056 f4057)
             (lambda (g4054)
               (zombies/c j4055 k4056 (f4057 (posn/c j4055 k4056 g4054))))))
          ((equal? msg 'draw-on/color)
           (lambda (j4060 k4061 f4062)
             (lambda (g4058 g4059)
               (image?
                j4060
                k4061
                (f4062
                 (string? j4060 k4061 g4058)
                 (image? j4060 k4061 g4059))))))
          ((equal? msg 'touching?)
           (lambda (j4064 k4065 f4066)
             (lambda (g4063)
               (boolean? j4064 k4065 (f4066 (posn/c j4064 k4065 g4063))))))
          ((equal? msg 'kill-all)
           (lambda (j4068 k4069 f4070)
             (lambda (g4067)
               (horde/c j4068 k4069 (f4070 (zombies/c j4068 k4069 g4067))))))
          (else error)))))
    (define world/c
      (->d
       (one-of/c 'on-mouse 'on-tick 'to-draw 'stop-when)
       (lambda (msg)
         (cond
          ((equal? msg 'on-mouse)
           (lambda (j4074 k4075 f4076)
             (lambda (g4071 g4072 g4073)
               (world/c
                j4074
                k4075
                (f4076
                 (real? j4074 k4075 g4071)
                 (real? j4074 k4075 g4072)
                 (string? j4074 k4075 g4073))))))
          ((equal? msg 'on-tick)
           (lambda (j4077 k4078 f4079)
             (lambda () (world/c j4077 k4078 (f4079)))))
          ((equal? msg 'to-draw)
           (lambda (j4080 k4081 f4082)
             (lambda () (image? j4080 k4081 (f4082)))))
          ((equal? msg 'stop-when)
           (lambda (j4083 k4084 f4085)
             (lambda () (boolean? j4083 k4084 (f4085)))))
          (else error)))))
    (define (new-world player mouse zombies)
      (λ (msg)
        (cond
         ((equal? msg 'on-mouse)
          (λ (x y me)
            (new-world
             player
             (if (equal? me leave) ((player 'posn)) (new-posn x y))
             zombies)))
         ((equal? msg 'on-tick)
          (λ ()
            (new-world
             ((player 'move-toward) mouse)
             mouse
             ((((zombies 'eat-brains)) 'move-toward) ((player 'posn))))))
         ((equal? msg 'to-draw)
          (λ () ((player 'draw-on) ((zombies 'draw-on) MT-SCENE))))
         ((equal? msg 'stop-when)
          (λ () ((zombies 'touching?) ((player 'posn)))))
         (else unknown message))))
    (define (new-player p)
      (λ (msg)
        (cond
         ((equal? msg 'posn) (λ () p))
         ((equal? msg 'move-toward)
          (λ (q) (new-player ((p 'move-toward/speed) q PLAYER-SPEED))))
         ((equal? msg 'draw-on) (λ (scn) ((p 'draw-on/image) PLAYER-IMG scn)))
         (else unknown message))))
    (define (new-horde undead dead)
      (λ (msg)
        (cond
         ((equal? msg 'dead) (λ () dead))
         ((equal? msg 'undead) (λ () undead))
         ((equal? msg 'draw-on)
          (λ (scn)
            ((undead 'draw-on/color)
             yellow
             ((dead 'draw-on/color) black scn))))
         ((equal? msg 'touching?)
          (λ (p) (or ((undead 'touching?) p) ((dead 'touching?) p))))
         ((equal? msg 'move-toward)
          (λ (p) (new-horde ((undead 'move-toward) p) dead)))
         ((equal? msg 'eat-brains) (λ () ((undead 'kill-all) dead)))
         (else unknown message))))
    (define (new-cons-zombies z r)
      (λ (msg)
        (cond
         ((equal? msg 'move-toward)
          (λ (p) (new-cons-zombies ((z 'move-toward) p) ((r 'move-toward) p))))
         ((equal? msg 'draw-on/color)
          (λ (c s) ((z 'draw-on/color) c ((r 'draw-on/color) c s))))
         ((equal? msg 'touching?)
          (λ (p) (or ((z 'touching?) p) ((r 'touching?) p))))
         ((equal? msg 'kill-all)
          (λ (dead)
            (cond
             ((or ((r 'touching?) ((z 'posn))) ((dead 'touching?) ((z 'posn))))
              ((r 'kill-all) (new-cons-zombies z dead)))
             (else
              (let ((res ((r 'kill-all) dead)))
                (new-horde
                 (new-cons-zombies z ((res 'undead)))
                 ((res 'dead))))))))
         (else unknown message))))
    (define (new-mt-zombies)
      (λ (msg)
        (cond
         ((equal? msg 'move-toward) (λ (p) (new-mt-zombies)))
         ((equal? msg 'draw-on/color) (λ (c s) s))
         ((equal? msg 'touching?) (λ (p) #f))
         ((equal? msg 'kill-all) (λ (dead) (new-horde (new-mt-zombies) dead)))
         (else unknown message))))
    (define (new-zombie p)
      (λ (msg)
        (cond
         ((equal? msg 'posn) (λ () p))
         ((equal? msg 'draw-on/color)
          (λ (c s) ((p 'draw-on/image) (circle ZOMBIE-RADIUS solid c) s)))
         ((equal? msg 'touching?) (λ (q) (<= ((p 'dist) q) ZOMBIE-RADIUS)))
         ((equal? msg 'move-toward)
          (λ (q) (new-zombie ((p 'move-toward/speed) q ZOMBIE-SPEED))))
         (else unknown message))))
    (define (new-posn x y)
      (letrec ((this
                (λ (msg)
                  (cond
                   ((equal? msg 'x) (λ () x))
                   ((equal? msg 'y) (λ () y))
                   ((equal? msg 'posn) (λ () this))
                   ((equal? msg 'move-toward/speed)
                    (λ (p speed)
                      (let* ((δx (- ((p 'x)) x))
                             (δy (- ((p 'y)) y))
                             (move-distance
                              (min speed (max (abs δx) (abs δy)))))
                        (cond
                         ((< (abs δx) (abs δy))
                          ((this 'move)
                           0
                           (if (positive? δy)
                             move-distance
                             (- 0 move-distance))))
                         (else
                          ((this 'move)
                           (if (positive? δx)
                             move-distance
                             (- 0 move-distance))
                           0))))))
                   ((equal? msg 'move)
                    (λ (δx δy) (new-posn (+ x δx) (+ y δy))))
                   ((equal? msg 'draw-on/image)
                    (λ (img scn) (place-image img x y scn)))
                   ((equal? msg 'dist)
                    (λ (p)
                      (sqrt (+ (sqr (- ((p 'y)) y)) (sqr (- ((p 'x)) x))))))
                   (else unknown message)))))
        this))
    (define w0
      (new-world
       (new-player (new-posn 0 0))
       (new-posn 0 0)
       (new-horde
        (new-cons-zombies
         (new-zombie (new-posn 100 300))
         (new-cons-zombies (new-zombie (new-posn 100 200)) (new-mt-zombies)))
        (new-cons-zombies (new-zombie (new-posn 200 200)) (new-mt-zombies)))))
    (begin
      ((((lambda (j4087 k4088 f4089)
           (lambda (g4086)
             (boolean? j4087 k4088 (f4089 (any/c j4087 k4088 g4086)))))
         'module
         'importer
         image?)
        (input))
       (((lambda (j4092 k4093 f4094)
           (lambda (g4090 g4091)
             (image?
              j4092
              k4093
              (f4094 (real? j4092 k4093 g4090) (real? j4092 k4093 g4091)))))
         'module
         'importer
         empty-scene)
        (input)
        (input))
       (((lambda (j4099 k4100 f4101)
           (lambda (g4095 g4096 g4097 g4098)
             (image?
              j4099
              k4100
              (f4101
               (image? j4099 k4100 g4095)
               (real? j4099 k4100 g4096)
               (real? j4099 k4100 g4097)
               (image? j4099 k4100 g4098)))))
         'module
         'importer
         place-image)
        (input)
        (input)
        (input)
        (input))
       (((lambda (j4105 k4106 f4107)
           (lambda (g4102 g4103 g4104)
             (image?
              j4105
              k4106
              (f4107
               (real? j4105 k4106 g4102)
               (string? j4105 k4106 g4103)
               (string? j4105 k4106 g4104)))))
         'module
         'importer
         circle)
        (input)
        (input)
        (input))
       (((lambda (j4111 k4112 f4113)
           (lambda (g4108 g4109 g4110)
             (world/c
              j4111
              k4112
              (f4113
               (player/c j4111 k4112 g4108)
               (posn/c j4111 k4112 g4109)
               (horde/c j4111 k4112 g4110)))))
         'module
         'importer
         new-world)
        (input)
        (input)
        (input))
       (((lambda (j4115 k4116 f4117)
           (lambda (g4114)
             (player/c j4115 k4116 (f4117 (posn/c j4115 k4116 g4114)))))
         'module
         'importer
         new-player)
        (input))
       (((lambda (j4120 k4121 f4122)
           (lambda (g4118 g4119)
             (horde/c
              j4120
              k4121
              (f4122
               (zombies/c j4120 k4121 g4118)
               (zombies/c j4120 k4121 g4119)))))
         'module
         'importer
         new-horde)
        (input)
        (input))
       (((lambda (j4125 k4126 f4127)
           (lambda (g4123 g4124)
             (zombies/c
              j4125
              k4126
              (f4127
               (zombie/c j4125 k4126 g4123)
               (zombies/c j4125 k4126 g4124)))))
         'module
         'importer
         new-cons-zombies)
        (input)
        (input))
       ((lambda (j4128 k4129 f4130)
          (lambda () (zombies/c j4128 k4129 (f4130))))
        'module
        'importer
        new-mt-zombies)
       (((lambda (j4132 k4133 f4134)
           (lambda (g4131)
             (zombie/c j4132 k4133 (f4134 (posn/c j4132 k4133 g4131)))))
         'module
         'importer
         new-zombie)
        (input))
       (((lambda (j4137 k4138 f4139)
           (lambda (g4135 g4136)
             (posn/c
              j4137
              k4138
              (f4139 (real? j4137 k4138 g4135) (real? j4137 k4138 g4136)))))
         'module
         'importer
         new-posn)
        (input)
        (input))
       (world/c 'module 'importer w0)))))
