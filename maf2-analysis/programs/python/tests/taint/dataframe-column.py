# Selecting single columns: only the sink that receives the sensitive "salary" column should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def ages():
    return Taint().sink(load()["age"])

def salaries():
    return Taint().sink(load()["salary"])

(ages(), salaries())
