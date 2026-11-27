# Dropping a column other than the sensitive "salary" column with labels and axis="columns": the sink should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    return Taint().sink(load().drop(["age"], axis="columns"))

main()
