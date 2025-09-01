# How to generate a SMILES for an abbreviation?

- Draw the substructure/protective group you want to abbreviate as a normal structure in ChemDraw; for example the p-Methoxybenzyl (PMB) protective group: </br>
    ![PMB_raw](./imgs/PMB_raw.png)
- Add an 'any atom' at the position where the protective group will be connected to the main structure: </br>
    ![PMB_AnyAtom](./imgs/PMB_AnyAtom.png)
- Select the protective group: </br>
    ![PMB_AnyAtom_selected](./imgs/PMB_AnyAtom_selected.png)
- Click on </br>
    "Edit" → "Copy As" → "SMILES" </br>
This will add the SMILES to the clipboard and it can be pasted via "Ctrl + V" or right mouse button → "Paste":
COC1=CC=C(CO[*])C=C1
- The SMILES can then be added to the abbreviations list, together with its abbreviation: </br>
    ```PMB COC1=CC=C(CO[*])C=C1```