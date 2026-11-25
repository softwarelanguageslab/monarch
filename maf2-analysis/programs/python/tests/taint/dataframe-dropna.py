# dropna() drops rows based on every column, including "salary": the remaining ages depend on it, so the sink should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    return Taint().sink(load().dropna()[["age"]])

main()
