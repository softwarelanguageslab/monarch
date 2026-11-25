# Filtering rows on the non-sensitive "age" column: the sink should not raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    customers = load()
    return Taint().sink(customers[customers["age"] > 30][["age"]])

main()
