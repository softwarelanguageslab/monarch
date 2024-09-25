def main():
    lst = [1,2,3].__taint__()
    len = 0 
    for _ in lst:
        len += 1
    return len

main()