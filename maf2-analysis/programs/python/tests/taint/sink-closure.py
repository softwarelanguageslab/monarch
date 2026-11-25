# A closure that captures a tainted variable does not raise an alarm when it is
# passed to a sink, because its captured variables are only revealed by calling
# it. The result of calling it is tainted and does raise an alarm.
def make(value):
    def get():
        return value
    return get

def closure():
    return Taint().sink([make(random().__taint__())])

def called_closure():
    return Taint().sink(make(random().__taint__())())

(closure(), called_closure())
