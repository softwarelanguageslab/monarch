# A new column computed with arithmetic from the sensitive "salary" column:
# logging it should raise an alarm.
import pandas as pd

def main(): 
    df = pd.read_csv("input.csv", dtype = {"seniority": "int64", "salary": "sensitive_int64"})
    df["bonus"] = df["salary"] * df["seniority"] * 0.2
    log(df["bonus"])
    

main()
