def main():
    n = 42
    r = 100
    t = n.__taint__()
    if t == 42:
        r = 0
    else:
        r = 1
    return r
main()