# Passing both labels and columns to drop raises a ValueError (as in pandas), so the
# sink is never reached: no alarm, although "salary" is not dropped.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    return Taint().sink(load().drop("age", columns="name"))

main()
