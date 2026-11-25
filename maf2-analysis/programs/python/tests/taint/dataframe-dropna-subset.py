# dropna(subset=["age"]) drops rows based on "age" only: the sink should not raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    return Taint().sink(load().dropna(subset=["age"])[["age"]])

main()
