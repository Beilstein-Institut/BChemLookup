# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

An open-data collection (CC0) of chemical abbreviations and reagents mapped to SMILES, not an
application. The deliverable is the data; everything else exists to publish or validate it:

- `abbreviations.smi` — structural-group abbreviations. Header `Abbreviation<TAB>SMILES`, two
  tab-separated columns, attachment points marked `*` or `[*]` (both styles are in use).
- `reagents.smi` — reagent names → SMILES. Header `Reagent<TAB>SMILES`, but data rows carry two
  trailing tabs (4 fields); don't "fix" that without checking what consumes the file.
- `index.html` — standalone static viewer (GitHub Pages). Fetches the `.smi` files at runtime and
  renders them with DataTables + jQuery from CDNs. No build step, no bundler, no package.json.
- `lint.py` + `scripts/` + `.github/workflows/` — the validation described below.
- `Tutorials/` — contributor docs (ChemDraw, Ketcher, Pull_Request), each a `.md` plus a `.pdf`
  export and an `imgs/` folder. Edit the `.md`; the `.pdf` is a manual export.

## Data rules

- **Never remove a row because its SMILES duplicates another row's.** Synonyms (`NPhth`/`PhthN`,
  `Hex`/`n-Hex`/`n-hexyl`) legitimately share a structure; each spelling must stay looked-up-able.
  Only the abbreviation column must be unique — that is what CI enforces.
- Tabs, never spaces, and no trailing whitespace: `lint.py` requires `abbreviations.smi` to be
  byte-identical to a pandas `to_csv(sep='\t')` round-trip, so any stray space breaks CI.
- `index.html` splits a row on the **last** whitespace run, so the SMILES field must contain no
  whitespace (an abbreviation containing a space, e.g. `Py 2`, still parses).

## Commands

```bash
uv run lint.py                                # formatting round-trip check (PEP 723 inline deps)
./scripts/check_duplicates_abbreviations.sh   # duplicate-abbreviation check
cut -f1 abbreviations.smi | sort | uniq -d    # the duplicate check that actually works (see below)
python3 -m http.server                        # preview index.html — fetch() needs http://, not file://
```

CI (`check_abbreviations.yml`) runs the first two, but only on changes to `abbreviations.smi` —
edits to `reagents.smi` are unvalidated.

Known issue: the bash script splits with `cut -d' ' -f1`. The file is fully tab-separated, so that
key is the whole line and only rows duplicated in *both* columns are caught. `cut -f1` would restore
the intended check.

## Contributing conventions (from README)

One list per pull request. The PR description must state the source of the data and confirm it is
CC0-compatible. Commit subjects in this repo are short and end with a semicolon (`Refine table;`).
