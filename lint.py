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
    smi_path = HERE.joinpath("abbreviations.smi")
    df2 = pd.read_csv(smi_path, sep="\t")

    if smi_path.read_text() != df2.to_csv(sep='\t', index=False):
        raise ValueError(f"{smi_path} is not formatted properly.")


if __name__ == '__main__':
    main()
