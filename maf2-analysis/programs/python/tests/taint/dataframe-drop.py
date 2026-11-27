# Dropping the sensitive "salary" column before passing the whole DataFrame: the sink should not raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    return Taint().sink(load().drop(columns=["salary"]))

main()
