
def main():
    n = 42
    tainted = n.__taint__()
    return Taint().sink(tainted)

main()
