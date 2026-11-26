# Arithmetic on columns: only the result that uses the sensitive "salary"
# column should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("employees.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def ages():
    employees = load()
    return Taint().sink(employees["age"] * 2 + 1)

def raises():
    employees = load()
    return Taint().sink(employees["salary"] / employees["age"] - 1)

(ages(), raises())
