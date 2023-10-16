def foo(y): 
    x = 41
    x = y
    y = 3
    def bar():
        nonlocal x
        x = 42

    bar()

foo(30)
x = 1

"""
let (foo@1,x@2): 
   foo@1=λ (): 
      let (x@4,bar@5): 
         x@4=41
         bar@5=λ (): 
            let (x@6): 
               
               x@4=42
         bar@5()
   foo@1()
   x@2=1
"""
