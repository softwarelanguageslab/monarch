# Filtering rows on the sensitive "salary" column: the remaining ages depend on it, so the sink should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    customers = load()
    return Taint().sink(customers[customers["salary"] > 50000][["age"]])

main()
