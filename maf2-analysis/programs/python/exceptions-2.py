def f(x):
    if x != 0:
        raise Exception()
    
def main():
    try:
        f(0)
        f(1)
        return 10
    except:
        return 20
    
main()