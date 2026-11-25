# Mapping only the sensitive "salary" column: the sink should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    salaries = load()[["salary"]].map(lambda salary: salary * 2)
    return Taint().sink(salaries)

main()
