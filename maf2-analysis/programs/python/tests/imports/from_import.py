# `from m import y` binds `y` to a member of the module
from pandas import DataFrame
from pandas import Series as S

def main():
    return (DataFrame, S)

main()
