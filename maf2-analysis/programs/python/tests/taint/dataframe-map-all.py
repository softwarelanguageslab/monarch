# Mapping all columns, including the sensitive "salary" column: the sink should raise an alarm.
import pandas as pd

def load():
    return pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})

def main():
    everything = load().map(lambda value: value)
    return Taint().sink(everything)

main()
