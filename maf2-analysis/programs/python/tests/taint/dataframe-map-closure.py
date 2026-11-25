# The mapped function reads a tainted variable that it captures: the sink should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    bonus = random().__taint__()
    ages = load()[["age"]].map(lambda age: age + bonus)
    return Taint().sink(ages)

main()
