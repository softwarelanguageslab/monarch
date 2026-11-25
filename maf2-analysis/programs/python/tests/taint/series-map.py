# Series.map on the non-sensitive "age" column and on the sensitive "salary" column: only the second sink should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def ages():
    return Taint().sink(load()["age"].map(lambda age: age + 1))

def salaries():
    return Taint().sink(load()["salary"].map(lambda salary: salary * 2))

(ages(), salaries())
