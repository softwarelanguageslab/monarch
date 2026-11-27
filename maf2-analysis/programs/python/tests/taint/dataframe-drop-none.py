# drop() without labels, index or columns raises a ValueError (as in pandas), so the
# sink is never reached: no alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    return Taint().sink(load().drop())

main()
