# Customer data is read from a CSV file. The "salary" column is sensitive,
# which is encoded in its dtype ("sensitive_float64"). The map only reads the
# non-sensitive "age" column, so no sensitive value should reach the sink.
import pandas as pd

def main():
    customers = pd.read_csv("customers.csv", dtype={"name": "str", "age": "int64", "salary": "sensitive_float64"})
    ages = customers[["age"]].map(lambda age: age + 1)
    return Taint().sink(ages)

main()
