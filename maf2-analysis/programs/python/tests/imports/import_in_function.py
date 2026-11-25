# Imports inside a function bind local variables
def plain():
    pandas = 1
    import pandas
    return pandas.DataFrame

def renamed():
    import pandas as pd
    return pd.DataFrame

(plain(), renamed())
