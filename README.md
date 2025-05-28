# 🧪 BChemLookups

## **An Open Science Initiative for Mapping Common Chemical Abbreviations**

Welcome to the **Beilstein Chemical Lookup Collection** – an open, community-driven resource dedicated to collecting and standardizing **chemical abbreviations and shorthand notations** used in structure drawing, reaction schemes, and synthetic chemistry.

This open-science repository aims to gather, curate, and share a comprehensive set of chemical lookups. In chemical drawings or reaction schemes, it's common to use abbreviated labels to represents (larger) substructures:

| Abbreviation | Meaning             | SMILES/SMARTS | Notes                     |
| ------------ | ------------------- | ------------- | ------------------------- |
| `Ph`         | Phenyl              | `c1ccccc1`    | Benzene ring              |
| `Bn`         | Benzyl              | `c1ccccc1CH2` | Common protecting group   |
| `tBu`        | tert-Butyl          | `C(C)(C)C`    | Often used as steric bulk |
| `Boc`        | tert-Butoxycarbonyl | `OC(C)(C)C=O` | Amine protecting group    |
| `Et`         | Ethyl               | `CC`          | Alkyl chain               |

This project aims to **collect, normalize, curated and publish** these mappings as **open source** structured data and human readable.

## Goals

- Create comprehensive lists of chemical abbreviations used in:
  - Academic literature
  - Chemical drawing software
  - Reaction databases
- Provide **machine-readable formats** for use in parsers, renderers, and other cheminformatics tools
- Identify **ambiguities**, **overloads**, and **regional variations**
- Enable community contribution and review for open data curation

## What is in this repository
- `abbreviations.smi` – a machine-readable dictionary for structural group abbreviations on chemical drawings
  - It is a two-column, tab separated text file, the first column contains the abbreviation and the second column holds the corresponding SMILES, using an asterisk (`*`) to indicate the attachment point
  
  | Abbreviation | SMILES/SMARTS |
  | ------------ | ------------- |
  | `C`          | `*c1ccc(F)cc1`| 
  | `–OCH2O–`    | `*OCO*`       |
  | `MeO`        | `CO[*]`       |
- TODO more to add

## Contributing
We believe the best resource is a community-built one, so you are welcome to contribute.
To contribute:
1. [Fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) this repository 
2. Add or update entries
3. Submit a [pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) 
4. Optionally open an issue for discussion if a term is ambiguous or unclear

We really appreciate your help in keeping things nice and tidy by only modifying one list in each pull request.

Please include in the commentary section of the pull request a short description or common use of your changes and a reference or example source, if possible.

## License
All data in this repository is released under the **TODO: add license here**. Use it freely in research, software, education, or commercial applications.

## Acknowledgments
This project is inspired by the needs of the cheminformatics community, and we thank the many open-source projects that aim to make chemical knowledge more [FAIR (Findable, Accessible, Interoperable, Reusable)](https://www.go-fair.org/fair-principles/).

## Feedback? 
Open an issue or contact the maintainers. **(TODO: add generic beilstein mail)**
