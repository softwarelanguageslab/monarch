# Dropping a column with an unknown name may remove "salary", but may also not, so
# looking it up may succeed and the sink may be reached: the sink should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    df = load()
    salary = df["salary"]
    if random() > 0:
        name = "age"
    else:
        name = "name"
    df = df.drop(columns=name)
    df["salary"]
    return Taint().sink(salary)

main()
