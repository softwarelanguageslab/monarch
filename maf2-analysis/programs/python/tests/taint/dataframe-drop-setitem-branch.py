# Re-adding a dropped column on only one path makes it maybe present, so looking it up
# may succeed and the sink may be reached: the sink should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    df = load()
    salary = df["salary"]
    df = df.drop(columns="salary")
    if random() > 0:
        df["salary"] = df["age"]
    df["salary"]
    return Taint().sink(salary)

main()
