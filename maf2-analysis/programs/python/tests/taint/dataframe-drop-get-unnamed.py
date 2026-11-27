# Looking up a column that dtype does not list, after dropping it, raises a KeyError
# (instead of returning the default column), so the sink is never reached: no alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    df = load()
    salary = df["salary"]
    df = df.drop(columns="country")
    df["country"]
    return Taint().sink(salary)

main()
