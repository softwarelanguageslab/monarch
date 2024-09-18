def main():
    n = 42
    t = n.__taint__()
    return t+1

main()