def main():
    x = 0 
    y = 0
    z = 0
    try:
        x = random()
        x = x.__taint__()
        if x == 0:
            raise Exception()
        y = 1
    except: 
        pass
    z = 1
    return (y, z)    # y should be tainted, z should not

main()