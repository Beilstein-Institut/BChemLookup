# How to generate a SMILES for an abbreviation using Ketcher?

- Draw the substructure/protective group you want to abbreviate as a normal structure in Ketcher; for example the p-Methoxybenzyl (PMB) protective group: </br>
    ![PMB_raw](./imgs/PMB_raw.png)
- Add an 'any atom'at the position where the protective group will be connected to the main structure: </br>
    ![PMB_any_atom](./imgs/PMB_any_atom.png)
- Click on "Save as..." → select "Daylight SMILES" in "File format": </br>
    ![Save_as](./imgs/Ketcher_Save_as_SMILES.png)
- Select and copy the SMILES via "Ctrl + C" or right mouse button → "Copy", </br> so it can be pasted via "Ctrl + V" or right mouse button → "Paste":</br>
C1(CO*)C=CC(CC)=CC=1
- The SMILES can then be added to the abbreviations list, together with its abbreviation: </br>
    ```PMB C1(CO*)C=CC(CC)=CC=1```