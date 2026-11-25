# A list that contains a tainted value: the sink should raise an alarm.
def main():
    secret = random().__taint__()
    return Taint().sink([1, secret])

main()
