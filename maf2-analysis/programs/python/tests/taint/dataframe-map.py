# A "dataframe" encoded as a list of rows (dicts from column name to value).
# The "salary" column is sensitive. The map only reads the non-sensitive
# "age" column, so no tainted value should reach the sink.
def main():
    rows = [{"age": random(), "salary": random().__taint__()},
            {"age": random(), "salary": random().__taint__()}]
    out = 0
    for row in rows:
        out = row["age"] + 1
    return Taint().sink(out)

main()
