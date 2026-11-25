# `import a.b.c` binds only `a`; `import a.b.c as x` binds `x` to the innermost module
import pandas.core.frame
import pandas.core.frame as frame
from pandas.core.frame import DataFrame

def main():
    return (pandas.core.frame.DataFrame, frame.DataFrame, DataFrame)

main()
