


When I am typing a numbered list, VSCode tries to insert 3 spaces when I Press TAB twice in a row when adding an item to a list. for example:
```
1. Main List - Zero Spaces
     1. Sub List - Four Spaces or Two TAB Key Presses
          1. Sub-Sub List - 8 Spaces or Four TAB Key Presses
```
However, then I try to create the sub-sub list, I start with the cursor at the end of the Sub-List Line, press RETURN to Insert a new List Item (This will be the Sub-Sub List) then I press the TAB Key twice to 



I get that error and it points to the first Line First col Character `{` maybe there is a problem with my syntax? here is a truncated example of my `settings.json`
```json
{
    // "matlab.linterConfig": "",
    "matlab.mlintpath": "/Applications/MATLAB_R2022b.app/bin/maci64/",
    "matlab.matlabpath": "/Applications/MATLAB_R2022b.app",
    // ------------------ EDITOR WINDOW
    // Increase  number of tabs visible on an editor window
    "workbench.editor.tabSizing": "shrink",
    "workbench.settings.openDefaultKeybindings": true,
    "editor.tokenColorCustomizations": {
        "textMateRules": [
        ]
    },
    // COMMENT HERE
    "workbench.editorAssociations": {
        "*.pdf": "pdf.preview"
    } 
    // END workbench.editorAssociations
}
```
Is this valid? with the COMMENT HERE?
