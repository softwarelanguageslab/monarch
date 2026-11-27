# Looking up a column after dropping it raises a KeyError, so the sink is never reached: no alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    df = load()
    salary = df["salary"]
    df = df.drop(columns="salary")
    df["salary"]
    return Taint().sink(salary)

main()
