
# Example program showing taint analysis on an integer's __taint__ method
def main():
    n = random()
    tainted = n.__taint__()
    z = 4
    if tainted == 0:
        z = 5

    return Taint().sink(z)

# The taint error does not propagate to the main component as we are catching all exceptions
try:
    main()
except:
    pass