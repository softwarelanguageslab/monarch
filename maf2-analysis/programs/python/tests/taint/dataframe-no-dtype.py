# Without a dtype, no column is sensitive: the sink should not raise an alarm.
import pandas as pd

def main():
    customers = pd.read_csv("customers.csv")
    return Taint().sink(customers.map(lambda value: value))

main()
