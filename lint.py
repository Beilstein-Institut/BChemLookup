# /// script
# requires-python = ">=3.10"
# dependencies = [
#     "pandas",
# ]
# ///

from pathlib import Path

import pandas as pd

HERE = Path(__file__).parent.resolve()


def main():
    tsv_path = HERE.joinpath("abbreviations.csv")
    df1 = pd.read_csv(tsv_path)

    smi_path = HERE.joinpath("abbreviations.smi")
    df2 = pd.read_csv(smi_path, sep="\t")

    if not (df1.columns == df2.columns).all():
        raise

    s1 = set(df1['Abbreviation'])
    s2 = set(df2['Abbreviation'])

    d1 = s1 - s2
    if d1:
        raise ValueError(f"abbreviations in CSV but not SMI: {d1}")

    d2 = s2 - s1
    if d2:
        raise ValueError(f"abbreviations in SMI but not CSV: {d2}")


if __name__ == '__main__':
    main()
