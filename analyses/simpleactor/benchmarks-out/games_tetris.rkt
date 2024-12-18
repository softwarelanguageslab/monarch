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
    (struct block (x y color))
    (struct tetra (center blocks))
    (struct world (tetra blocks))
    (struct posn (x y))
    (define COLOR/C symbol?)
    (define POSN/C (struct/c posn real? real?))
    (define BLOCK/C (struct/c block real? real? COLOR/C))
    (define BSET/C (listof BLOCK/C))
    (define TETRA/C (struct/c tetra POSN/C BSET/C))
    (define WORLD/C (struct/c world TETRA/C BSET/C))
    (define (posn=? p1 p2)
      (and (= (posn-x p1) (posn-x p2)) (= (posn-y p1) (posn-y p2))))
    (define block-size 20)
    (define board-height 20)
    (define board-width 10)
    (define (block=? b1 b2)
      (and (= (block-x b1) (block-x b2)) (= (block-y b1) (block-y b2))))
    (define (block-move dx dy b)
      (block (+ dx (block-x b)) (+ dy (block-y b)) (block-color b)))
    (define (block-rotate-ccw c b)
      (block
       (+ (posn-x c) (- (posn-y c) (block-y b)))
       (+ (posn-y c) (- (block-x b) (posn-x c)))
       (block-color b)))
    (define (block-rotate-cw c b)
      (block-rotate-ccw c (block-rotate-ccw c (block-rotate-ccw c b))))
    (define (ormap p? xs)
      (cond ((null? xs) #f) (else (or (p? (car xs)) (ormap p? (cdr xs))))))
    (define (andmap p? xs)
      (cond ((null? xs) #t) (else (and (p? (car xs)) (andmap p? (cdr xs))))))
    (define (map f xs)
      (cond ((null? xs) null) (else (cons (f (car xs)) (map f (cdr xs))))))
    (define (filter p? xs)
      (cond
       ((null? xs) null)
       ((p? (car xs)) (cons (car xs) (filter p? (cdr xs))))
       (else (filter p? (cdr xs)))))
    (define (append l r)
      (cond ((null? l) r) (else (cons (car l) (append (cdr l) r)))))
    (define (length xs) (cond ((null? xs) 0) (else (+ 1 (length (cdr xs))))))
    (define (foldr f a xs)
      (cond ((null? xs) a) (else (f (car xs) (foldr f a (cdr xs))))))
    (define (blocks-contains? bs b) (ormap (λ (c) (block=? b c)) bs))
    (define (blocks-subset? bs1 bs2)
      (andmap (λ (b) (blocks-contains? bs2 b)) bs1))
    (define (blocks=? bs1 bs2)
      (and (blocks-subset? bs1 bs2) (blocks-subset? bs2 bs1)))
    (define (blocks-intersect bs1 bs2)
      (filter (λ (b) (blocks-contains? bs2 b)) bs1))
    (define (blocks-count bs) (length bs))
    (define (blocks-move dx dy bs) (map (λ (b) (block-move dx dy b)) bs))
    (define (blocks-rotate-ccw c bs) (map (λ (b) (block-rotate-ccw c b)) bs))
    (define (blocks-rotate-cw c bs) (map (λ (b) (block-rotate-cw c b)) bs))
    (define (blocks-change-color bs c)
      (map (λ (b) (block (block-x b) (block-y b) c)) bs))
    (define (blocks-row bs i) (filter (λ (b) (= i (block-y b))) bs))
    (define (full-row? bs i) (= board-width (blocks-count (blocks-row bs i))))
    (define (blocks-overflow? bs) (ormap (λ (b) (<= (block-y b) 0)) bs))
    (define (blocks-union bs1 bs2)
      (foldr
       (λ (b bs) (cond ((blocks-contains? bs b) bs) (else (cons b bs))))
       bs2
       bs1))
    (define (blocks-max-y bs) (foldr (λ (b n) (max (block-y b) n)) 0 bs))
    (define (blocks-min-x bs)
      (foldr (λ (b n) (min (block-x b) n)) board-width bs))
    (define (blocks-max-x bs) (foldr (λ (b n) (max (block-x b) n)) 0 bs))
    (define (eliminate-full-rows bs) (elim-row bs board-height 0))
    (define (elim-row bs i offset)
      (cond
       ((< i 0) empty)
       ((full-row? bs i) (elim-row bs (sub1 i) (add1 offset)))
       (else
        (blocks-union
         (elim-row bs (sub1 i) offset)
         (blocks-move 0 offset (blocks-row bs i))))))
    (define (tetra-move dx dy t)
      (tetra
       (posn (+ dx (posn-x (tetra-center t))) (+ dy (posn-y (tetra-center t))))
       (blocks-move dx dy (tetra-blocks t))))
    (define (tetra-rotate-ccw t)
      (tetra
       (tetra-center t)
       (blocks-rotate-ccw (tetra-center t) (tetra-blocks t))))
    (define (tetra-rotate-cw t)
      (tetra
       (tetra-center t)
       (blocks-rotate-cw (tetra-center t) (tetra-blocks t))))
    (define (tetra-overlaps-blocks? t bs)
      (false? (false? (blocks-intersect (tetra-blocks t) bs))))
    (define (tetra-change-color t c)
      (tetra (tetra-center t) (blocks-change-color (tetra-blocks t) c)))
    (define (build-tetra-blocks color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
      (tetra-move
       3
       0
       (tetra
        (posn xc yc)
        (list
         (block x1 y1 color)
         (block x2 y2 color)
         (block x3 y3 color)
         (block x4 y4 color)))))
    (define (touchdown w tetras)
      (world
       (list-pick-random tetras)
       (eliminate-full-rows
        (blocks-union (tetra-blocks (world-tetra w)) (world-blocks w)))))
    (define (world-jump-down w)
      (cond
       ((landed? w) w)
       (else
        (world-jump-down
         (world (tetra-move 0 1 (world-tetra w)) (world-blocks w))))))
    (define (landed-on-blocks? w)
      (tetra-overlaps-blocks?
       (tetra-move 0 1 (world-tetra w))
       (world-blocks w)))
    (define (landed-on-floor? w)
      (= (blocks-max-y (tetra-blocks (world-tetra w))) (sub1 board-height)))
    (define (landed? w) (or (landed-on-blocks? w) (landed-on-floor? w)))
    (define (next-world w tetras)
      (cond
       ((landed? w) (touchdown w tetras))
       (else (world (tetra-move 0 1 (world-tetra w)) (world-blocks w)))))
    (define (try-new-tetra w new-tetra)
      (cond
       ((or (< (blocks-min-x (tetra-blocks new-tetra)) 0)
            (>= (blocks-max-x (tetra-blocks new-tetra)) board-width)
            (tetra-overlaps-blocks? new-tetra (world-blocks w)))
        w)
       (else (world new-tetra (world-blocks w)))))
    (define (world-move dx dy w)
      (try-new-tetra w (tetra-move dx dy (world-tetra w))))
    (define (world-rotate-ccw w)
      (try-new-tetra w (tetra-rotate-ccw (world-tetra w))))
    (define (world-rotate-cw w)
      (try-new-tetra w (tetra-rotate-cw (world-tetra w))))
    (define (ghost-blocks w)
      (tetra-blocks
       (tetra-change-color (world-tetra (world-jump-down w)) 'gray)))
    (define (world-key-move w k)
      (cond
       ((equal? k left) (world-move neg-1 0 w))
       ((equal? k right) (world-move 1 0 w))
       ((equal? k down) (world-jump-down w))
       ((equal? k a) (world-rotate-ccw w))
       ((equal? k s) (world-rotate-cw w))
       (else w)))
    (struct image ())
    (define (overlay i₁ i₂) (image))
    (define (circle r m c) (image))
    (define (rectangle w h m c) (image))
    (define (place-image i₁ r c i₂) (image))
    (define (empty-scene w h) (image))
    (define (list-pick-random xs)
      (cond ((null? (cdr xs)) (car xs)) (else (list-pick-random (cdr xs)))))
    (define neg-1 (random 10))
    (define (world->image w)
      (place-image
       (blocks->image
        (append
         (tetra-blocks (world-tetra w))
         (append (ghost-blocks w) (world-blocks w))))
       0
       0
       (empty-scene (* board-width block-size) (* board-height block-size))))
    (define (blocks->image bs)
      (foldr
       (λ (b img) (cond ((<= 0 (block-y b)) (place-block b img)) (else img)))
       (empty-scene
        (add1 (* board-width block-size))
        (add1 (* board-height block-size)))
       bs))
    (define (block->image b)
      (overlay
       (rectangle (add1 block-size) (add1 block-size) 'solid (block-color b))
       (rectangle (add1 block-size) (add1 block-size) 'outline 'black)))
    (define (place-block b scene)
      (place-image
       (block->image b)
       (+ (* (block-x b) block-size) (/ block-size 2))
       (+ (* (block-y b) block-size) (/ block-size 2))
       scene))
    (define (world0 tetras) (world (list-pick-random tetras) null))
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
       (any/c 'module 'importer COLOR/C)
       (any/c 'module 'importer POSN/C)
       (any/c 'module 'importer BLOCK/C)
       (any/c 'module 'importer TETRA/C)
       (any/c 'module 'importer WORLD/C)
       (any/c 'module 'importer BSET/C)
       (integer? 'module 'importer block-size)
       (integer? 'module 'importer board-width)
       (integer? 'module 'importer board-height)
       (((lambda (j3990 k3991 f3992)
           (lambda (g3988 g3989)
             (BLOCK/C
              j3990
              k3991
              (f3992 (POSN/C j3990 k3991 g3988) (BLOCK/C j3990 k3991 g3989)))))
         'module
         'importer
         block-rotate-ccw)
        (input)
        (input))
       (((lambda (j3995 k3996 f3997)
           (lambda (g3993 g3994)
             (BLOCK/C
              j3995
              k3996
              (f3997 (POSN/C j3995 k3996 g3993) (BLOCK/C j3995 k3996 g3994)))))
         'module
         'importer
         block-rotate-cw)
        (input)
        (input))
       (((lambda (j4000 k4001 f4002)
           (lambda (g3998 g3999)
             (boolean?
              j4000
              k4001
              (f4002
               (BLOCK/C j4000 k4001 g3998)
               (BLOCK/C j4000 k4001 g3999)))))
         'module
         'importer
         block=?)
        (input)
        (input))
       (((lambda (j4006 k4007 f4008)
           (lambda (g4003 g4004 g4005)
             (BLOCK/C
              j4006
              k4007
              (f4008
               (real? j4006 k4007 g4003)
               (real? j4006 k4007 g4004)
               (BLOCK/C j4006 k4007 g4005)))))
         'module
         'importer
         block-move)
        (input)
        (input)
        (input))
       (((lambda (j4011 k4012 f4013)
           (lambda (g4009 g4010)
             (boolean?
              j4011
              k4012
              (f4013 (BSET/C j4011 k4012 g4009) (BLOCK/C j4011 k4012 g4010)))))
         'module
         'importer
         blocks-contains?)
        (input)
        (input))
       (((lambda (j4016 k4017 f4018)
           (lambda (g4014 g4015)
             (boolean?
              j4016
              k4017
              (f4018 (BSET/C j4016 k4017 g4014) (BSET/C j4016 k4017 g4015)))))
         'module
         'importer
         blocks=?)
        (input)
        (input))
       (((lambda (j4021 k4022 f4023)
           (lambda (g4019 g4020)
             (boolean?
              j4021
              k4022
              (f4023 (BSET/C j4021 k4022 g4019) (BSET/C j4021 k4022 g4020)))))
         'module
         'importer
         blocks-subset?)
        (input)
        (input))
       (((lambda (j4026 k4027 f4028)
           (lambda (g4024 g4025)
             (BSET/C
              j4026
              k4027
              (f4028 (BSET/C j4026 k4027 g4024) (BSET/C j4026 k4027 g4025)))))
         'module
         'importer
         blocks-intersect)
        (input)
        (input))
       (((lambda (j4030 k4031 f4032)
           (lambda (g4029)
             (real? j4030 k4031 (f4032 (BSET/C j4030 k4031 g4029)))))
         'module
         'importer
         blocks-count)
        (input))
       (((lambda (j4034 k4035 f4036)
           (lambda (g4033)
             (boolean? j4034 k4035 (f4036 (BSET/C j4034 k4035 g4033)))))
         'module
         'importer
         blocks-overflow?)
        (input))
       (((lambda (j4040 k4041 f4042)
           (lambda (g4037 g4038 g4039)
             (BSET/C
              j4040
              k4041
              (f4042
               (real? j4040 k4041 g4037)
               (real? j4040 k4041 g4038)
               (BSET/C j4040 k4041 g4039)))))
         'module
         'importer
         blocks-move)
        (input)
        (input)
        (input))
       (((lambda (j4045 k4046 f4047)
           (lambda (g4043 g4044)
             (BSET/C
              j4045
              k4046
              (f4047 (POSN/C j4045 k4046 g4043) (BSET/C j4045 k4046 g4044)))))
         'module
         'importer
         blocks-rotate-cw)
        (input)
        (input))
       (((lambda (j4050 k4051 f4052)
           (lambda (g4048 g4049)
             (BSET/C
              j4050
              k4051
              (f4052 (POSN/C j4050 k4051 g4048) (BSET/C j4050 k4051 g4049)))))
         'module
         'importer
         blocks-rotate-ccw)
        (input)
        (input))
       (((lambda (j4055 k4056 f4057)
           (lambda (g4053 g4054)
             (BSET/C
              j4055
              k4056
              (f4057 (BSET/C j4055 k4056 g4053) (COLOR/C j4055 k4056 g4054)))))
         'module
         'importer
         blocks-change-color)
        (input)
        (input))
       (((lambda (j4060 k4061 f4062)
           (lambda (g4058 g4059)
             (BSET/C
              j4060
              k4061
              (f4062 (BSET/C j4060 k4061 g4058) (real? j4060 k4061 g4059)))))
         'module
         'importer
         blocks-row)
        (input)
        (input))
       (((lambda (j4065 k4066 f4067)
           (lambda (g4063 g4064)
             (boolean?
              j4065
              k4066
              (f4067 (BSET/C j4065 k4066 g4063) (real? j4065 k4066 g4064)))))
         'module
         'importer
         full-row?)
        (input)
        (input))
       (((lambda (j4070 k4071 f4072)
           (lambda (g4068 g4069)
             (BSET/C
              j4070
              k4071
              (f4072 (BSET/C j4070 k4071 g4068) (BSET/C j4070 k4071 g4069)))))
         'module
         'importer
         blocks-union)
        (input)
        (input))
       (((lambda (j4074 k4075 f4076)
           (lambda (g4073)
             (real? j4074 k4075 (f4076 (BSET/C j4074 k4075 g4073)))))
         'module
         'importer
         blocks-max-x)
        (input))
       (((lambda (j4078 k4079 f4080)
           (lambda (g4077)
             (real? j4078 k4079 (f4080 (BSET/C j4078 k4079 g4077)))))
         'module
         'importer
         blocks-min-x)
        (input))
       (((lambda (j4082 k4083 f4084)
           (lambda (g4081)
             (real? j4082 k4083 (f4084 (BSET/C j4082 k4083 g4081)))))
         'module
         'importer
         blocks-max-y)
        (input))
       (((lambda (j4086 k4087 f4088)
           (lambda (g4085)
             (BSET/C j4086 k4087 (f4088 (BSET/C j4086 k4087 g4085)))))
         'module
         'importer
         eliminate-full-rows)
        (input))
       (((lambda (j4092 k4093 f4094)
           (lambda (g4089 g4090 g4091)
             (TETRA/C
              j4092
              k4093
              (f4094
               (integer? j4092 k4093 g4089)
               (integer? j4092 k4093 g4090)
               (TETRA/C j4092 k4093 g4091)))))
         'module
         'importer
         tetra-move)
        (input)
        (input)
        (input))
       (((lambda (j4096 k4097 f4098)
           (lambda (g4095)
             (TETRA/C j4096 k4097 (f4098 (TETRA/C j4096 k4097 g4095)))))
         'module
         'importer
         tetra-rotate-ccw)
        (input))
       (((lambda (j4100 k4101 f4102)
           (lambda (g4099)
             (TETRA/C j4100 k4101 (f4102 (TETRA/C j4100 k4101 g4099)))))
         'module
         'importer
         tetra-rotate-cw)
        (input))
       (((lambda (j4105 k4106 f4107)
           (lambda (g4103 g4104)
             (boolean?
              j4105
              k4106
              (f4107 (TETRA/C j4105 k4106 g4103) (BSET/C j4105 k4106 g4104)))))
         'module
         'importer
         tetra-overlaps-blocks?)
        (input)
        (input))
       (((lambda (j4119 k4120 f4121)
           (lambda (g4108
                    g4109
                    g4110
                    g4111
                    g4112
                    g4113
                    g4114
                    g4115
                    g4116
                    g4117
                    g4118)
             (TETRA/C
              j4119
              k4120
              (f4121
               (COLOR/C j4119 k4120 g4108)
               (real? j4119 k4120 g4109)
               (real? j4119 k4120 g4110)
               (integer? j4119 k4120 g4111)
               (integer? j4119 k4120 g4112)
               (integer? j4119 k4120 g4113)
               (integer? j4119 k4120 g4114)
               (integer? j4119 k4120 g4115)
               (integer? j4119 k4120 g4116)
               (integer? j4119 k4120 g4117)
               (integer? j4119 k4120 g4118)))))
         'module
         'importer
         build-tetra-blocks)
        (input)
        (input)
        (input)
        (input)
        (input)
        (input)
        (input)
        (input)
        (input)
        (input)
        (input))
       (((lambda (j4124 k4125 f4126)
           (lambda (g4122 g4123)
             (TETRA/C
              j4124
              k4125
              (f4126
               (TETRA/C j4124 k4125 g4122)
               (COLOR/C j4124 k4125 g4123)))))
         'module
         'importer
         tetra-change-color)
        (input)
        (input))
       (((lambda (j4129 k4130 f4131)
           (lambda (g4127 g4128)
             (WORLD/C
              j4129
              k4130
              (f4131
               (WORLD/C j4129 k4130 g4127)
               (string? j4129 k4130 g4128)))))
         'module
         'importer
         world-key-move)
        (input)
        (input))
       (((lambda (j4134 k4135 f4136)
           (lambda (g4132 g4133)
             (WORLD/C
              j4134
              k4135
              (f4136
               (WORLD/C j4134 k4135 g4132)
               ((and/c cons? (listof TETRA/C)) j4134 k4135 g4133)))))
         'module
         'importer
         next-world)
        (input)
        (input))
       (((lambda (j4138 k4139 f4140)
           (lambda (g4137)
             (BSET/C j4138 k4139 (f4140 (WORLD/C j4138 k4139 g4137)))))
         'module
         'importer
         ghost-blocks)
        (input))
       (((lambda (j4142 k4143 f4144)
           (lambda (g4141)
             (boolean? j4142 k4143 (f4144 (any/c j4142 k4143 g4141)))))
         'module
         'importer
         image?)
        (input))
       (((lambda (j4147 k4148 f4149)
           (lambda (g4145 g4146)
             (image?
              j4147
              k4148
              (f4149 (image? j4147 k4148 g4145) (image? j4147 k4148 g4146)))))
         'module
         'importer
         overlay)
        (input)
        (input))
       (((lambda (j4153 k4154 f4155)
           (lambda (g4150 g4151 g4152)
             (image?
              j4153
              k4154
              (f4155
               (real? j4153 k4154 g4150)
               (real? j4153 k4154 g4151)
               (string? j4153 k4154 g4152)))))
         'module
         'importer
         circle)
        (input)
        (input)
        (input))
       (((lambda (j4160 k4161 f4162)
           (lambda (g4156 g4157 g4158 g4159)
             (image?
              j4160
              k4161
              (f4162
               (real? j4160 k4161 g4156)
               (real? j4160 k4161 g4157)
               (COLOR/C j4160 k4161 g4158)
               (COLOR/C j4160 k4161 g4159)))))
         'module
         'importer
         rectangle)
        (input)
        (input)
        (input)
        (input))
       (((lambda (j4167 k4168 f4169)
           (lambda (g4163 g4164 g4165 g4166)
             (image?
              j4167
              k4168
              (f4169
               (image? j4167 k4168 g4163)
               (real? j4167 k4168 g4164)
               (real? j4167 k4168 g4165)
               (image? j4167 k4168 g4166)))))
         'module
         'importer
         place-image)
        (input)
        (input)
        (input)
        (input))
       (((lambda (j4172 k4173 f4174)
           (lambda (g4170 g4171)
             (image?
              j4172
              k4173
              (f4174 (real? j4172 k4173 g4170) (real? j4172 k4173 g4171)))))
         'module
         'importer
         empty-scene)
        (input)
        (input))
       (((lambda (j4176 k4177 f4178)
           (lambda (g4175)
             (TETRA/C
              j4176
              k4177
              (f4178 ((and/c cons? (listof TETRA/C)) j4176 k4177 g4175)))))
         'module
         'importer
         list-pick-random)
        (input))
       (integer? 'module 'importer neg-1)
       (((lambda (j4180 k4181 f4182)
           (lambda (g4179)
             (image? j4180 k4181 (f4182 (WORLD/C j4180 k4181 g4179)))))
         'module
         'importer
         world->image)
        (input))
       (((lambda (j4184 k4185 f4186)
           (lambda (g4183)
             (image? j4184 k4185 (f4186 (BSET/C j4184 k4185 g4183)))))
         'module
         'importer
         blocks->image)
        (input))
       (((lambda (j4188 k4189 f4190)
           (lambda (g4187)
             (image? j4188 k4189 (f4190 (BLOCK/C j4188 k4189 g4187)))))
         'module
         'importer
         block->image)
        (input))
       (((lambda (j4193 k4194 f4195)
           (lambda (g4191 g4192)
             (image?
              j4193
              k4194
              (f4195 (BLOCK/C j4193 k4194 g4191) (image? j4193 k4194 g4192)))))
         'module
         'importer
         place-block)
        (input)
        (input))
       (((lambda (j4197 k4198 f4199)
           (lambda (g4196)
             (WORLD/C
              j4197
              k4198
              (f4199 ((and/c cons? (listof TETRA/C)) j4197 k4198 g4196)))))
         'module
         'importer
         world0)
        (input))))))
