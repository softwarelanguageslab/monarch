def foo():
    global x
    x = 42

x = 5
foo()

# Should output (without error):
"""
let (foo@1,x@2): 
   foo@1=λ (): 
      let (x@4): 
         
         x@2=42
   x@2=5
   foo@1()
"""
