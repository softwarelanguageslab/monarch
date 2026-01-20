
from typing import Any, Callable, Dict, TypeAlias
from dataclasses import dataclass
from pathlib import Path
import pandas as pd

@dataclass
class Predicate:
    description: str
    callable: Callable[[Any], bool]

Schema: TypeAlias = Dict[str, Predicate]

def is_type(typ):
    return Predicate(
            description = str(typ),
            callable = lambda p: type(p) == typ
           )

def is_absent():
    return Predicate(
            description = "absent",
            callable = lambda _: False
           )

def explain_mismatch(failure: Dict[str, Predicate]):
    """
    Prints a message to the standard output explaining the output of 'check_schema'
    """
    for name, predicate in failure.items():
        print(f"\tColumn {name} should be {predicate.description}")

def check_schema(df, schema: Schema):
    """
    Check the given dataframe against the given schema.

    :param df a Pandas dataframe
    :param schema a dictionary consisting of strings as keys and predicates as values
    :return true with an empty dictionary if the dataframe matches the schema, otherwise false with a dictionary explaining which keys are missing do not match the expected type predicate
    """

    available_columns = df.columns
    missing_columns = set(schema.keys()).difference(available_columns)
    additional_columns = available_columns.difference(set(schema.keys()))

    if len(missing_columns) > 0:
        return False, { column : schema[column] for column in missing_columns }

    if len(additional_columns) > 0:
        return False, { column : is_absent() for column in additional_columns } # TODO: return some explanation

    incorrectly_typed_columns = []
    for (name, predicate) in schema.items():
        if not df[name].apply(predicate.callable).all():
            incorrectly_typed_columns.append(name)

    return len(incorrectly_typed_columns) == 0, { column : schema[column] for column in incorrectly_typed_columns }
     


def load_df(input_path: Path, schema: Schema) -> Any | None: 
    """
    Loads the given file using 'pandas.read_csv' and checks whether it conforms to the given schema.

    If it does not conform then 'None' is returned and the reason why is printed to the standard output,
    otherwise the data frame is returned as is.


    """

    df = pd.read_csv(input_path)
    schema_ok, err = check_schema(df, schema)

    if not schema_ok:
        print(f"Input file {input_path} does not confirm to the schema")
        explain_mismatch(err)
        return None

    return df
    

## The benchmark programs schema
core_benchmarks_schema = {
        "filename": is_type(str),
        "main_module": is_type(str),
        "main_function": is_type(str),
        "output_path": is_type(str),
        "success": is_type(bool)
    }

