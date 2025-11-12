class MyException(Exception):
    def __init__(self, msg):
        self.msg = msg 

def main():
    try:
        raise Exception()
    except MyException:
        return 3 

main()
