class Foo:
   def f(self, x): 
      y = x
      x += 1 
      def g():
        nonlocal x
        x = y * x
      g()
      return x
x = 1
Foo().f(x)
