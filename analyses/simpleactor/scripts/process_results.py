import pandas as pd
import seaborn as sb
import numpy as np
import sys
from pathlib import Path

if len(sys.argv) != 3: 
    print("Invalid number of arguments, exactly two arguments required")
    print("USAGE: ")
    print(f"{sys.argv[0]} TIME_CSV PRECISION_CSV")
    sys.exit(1)

TIME_CSV = sys.argv[1]
PRECISION_CSV = sys.argv[2]

def process_time(inputname): 
    input_path = Path(inputname)
    df_time = pd.read_csv(inputname, sep=";")
    df_time["time"] = df_time["time"] / (1000*1000)
    df_agg = df_time.groupby(["programName", "configuration", "k"]).agg(["mean"])
    df_agg = df_agg.swaplevel(0, 1)
    df_agg = (((df_agg / df_agg.loc['smallstep'])**(-1)).drop("iteration", axis=1))
    df_agg = df_agg.swaplevel(0, 1)
    print(df_agg.unstack([1,2]))
    # TODO: latex table

def process_precision(inputname):
    df_precision = pd.read_csv(inputname, sep=";")
    df_precision = df_precision.set_index(["programName", "precisionName", "k"])
    print(df_precision.unstack(1))


process_time(TIME_CSV)
process_precision(PRECISION_CSV)
