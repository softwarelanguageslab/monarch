class Counter:
    def __init__(self, initial_value):
        self.value = initial_value
    def increment(self):
        self.value += 1
    def decrement(self):
        self.value -= 1
    def status(self):
        return self.value


class DoubleIncCounter(Counter):
    def increment(self):
        self.value += 2

ctr = DoubleIncCounter(100)
ctr.increment()
ctr.increment()
ctr.decrement()
print(ctr.status())

"""
let (Counter@1,Counter@2,DoubleIncCounter@3,DoubleIncCounter@4,ctr@5): 
   Counter@2 = type@gbl.__new__(type@gbl,"Counter",[],{})
   let (): 
      Counter@2.__init__ = λ (self@7,initial_value@8): 
         let (): 
            self@7.value = initial_value@8
      Counter@2.increment = λ (self@9): 
         let (): 
            self@9.value = self@9.value.__add__(1)
      Counter@2.decrement = λ (self@10): 
         let (): 
            self@10.value = self@10.value.__sub__(1)
      Counter@2.status = λ (self@11): 
         let (): 
            return self@11.value
   DoubleIncCounter@4 = type@gbl.__new__(type@gbl,"DoubleIncCounter",[Counter@2],{})
   let (): 
      DoubleIncCounter@4.increment = λ (self@12): 
         let (): 
            self@12.value = self@12.value.__add__(2)
   ctr@5 = DoubleIncCounter@4(100)
   ctr@5.increment()
   ctr@5.increment()
   ctr@5.decrement()
   print@gbl(ctr@5.status())
"""

