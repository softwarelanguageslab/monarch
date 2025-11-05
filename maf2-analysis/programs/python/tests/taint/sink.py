
def main():
    n = 42
    tainted = n.__taint__()
    # return tainted
    return Taint().sink(tainted) 

main()