# Two maps in a row on the non-sensitive "age" column: the sink should not raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    ages = load()[["age"]].map(lambda age: age + 1).map(lambda age: age * 2)
    return Taint().sink(ages)

main()
