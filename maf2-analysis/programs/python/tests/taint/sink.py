
# Example program showing taint analysis on an integer's __taint__ method
def main():
    n = 42
    tainted = n.__taint__()
    if tainted:
        y = 1
    else: 
        y = 2
    # return tainted
    return Taint().sink(y) 

# The taint error does not propagate to the main component as we are catching all exceptions
try:
    main()
except:
    pass