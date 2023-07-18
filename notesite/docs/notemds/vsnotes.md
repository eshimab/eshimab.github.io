






# Using VS Code for general development

# Editor Settings in `settings.json`

## Notes:

1. Most CodeBlock examples include a trailing `,` comma to make it easier to copy-paste these examples into the `settings.json` file.
2. The Basic Structure of the `settings.json` file is:
    ```json
    {
      "config.setting.key.property":
    }
    ```

## Show more document tabs in the workbench.editor

```json
    // Increase  number of tabs visible on an editor window
    "workbench.editor.tabSizing": "shrink",
```

## Word Wrap (Soft wrap) Line limits

### Global Word Wrap

1. Set globally, but will be superceded by individual grammars
2. Global Settings
```json
// Soft Wrap Max Chars
"editor.wordWrap": "wordWrapColumn",
"editor.wordWrapColumn": 100,
"editor.rulers": [100],
```

### Language Specific Word Wraps

#### Word Wrap: Markdown

```json
// ------------------------ MARKDOWN ------------------------------------
// Markdown Language Specific Settings
"[markdown]": {
  "editor.wrappingStrategy": "advanced",
  // Set max char for soft wrap
  "editor.wordWrap": "wordWrapColumn",
  "editor.wordWrapColumn": 100,
  "editor.quickSuggestions": {
    "comments": "off",
    "strings": "off",
    "other": "off"
  }
}, // END [markdown] lanuage specific settings
```

## Set Indentation Defaults

```json
// ------------ Indentation
// Detect Indentation Based on Filetype
"editor.detectIndentation": false,
// Markdown Extension "Markdown All in One" List Formatting
"markdown.extension.list.indentationSize": "inherit", // Alternate: "adaptive"
"markdown.extension.list.toggle.candidate-markers": [
  "-",
  "*",
  "+",
  "1.",
  "01.", // Added
  "1)",
  "01)" // Added
],
```

## Error while editting `settings.json`

- You may see a single error while editting `settings.json`. 
    - Error will look like: `Unable to load schema from 'vscode://schemas/settings/user': cannot open vscode://schemas/settings/user. Detail: Unable to resolve text model content for resource vscode://schemas/settings/user.(768) Unixbecause`
- Fix this by using the Settings Menu `CMD + ,`
- On the Sidebar, go to `Workbench` > `Settings Editor` 
- Check the box for `Open Default Settings`
- Reload VSCode using `CTRL + ALT + CMD + L`



## Converting Atom cofee script to VS Code JavaScript

```coffee
# ------------------ CURSOR TO NEXT CHUNK ----------------------
atom.commands.add 'atom-text-editor',
  'cursor-to-next-chunk': ->
    # ----------------- Get cursor where it starts -------------------
    cursorPointStart = atom.workspace.getActiveTextEditor()?.getCursorBufferPosition()
    # ----------------- Move cursor to end of line -------------------
    atom.workspace.getActiveTextEditor()?.getLastCursor().moveToEndOfLine()
    # ----------------- Get cursor at end of line -------------------
    cursorPoint = atom.workspace.getActiveTextEditor()?.getCursorBufferPosition()
    rowStartBlank = false # init
    if cursorPointStart.column is 0 and cursorPoint.column is 0
      rowStartBlank = true
    # ----------------- Error Checking -------------------
    startLineComment = atom.workspace.getActiveTextEditor()?.isBufferRowCommented(cursorPoint.row)
    # ----------------- Init i and begin loop -------------------
    i = 1
    loop
      i = i + 1
      # ----------------- Move cursor down one line -------------------
      atom.workspace.getActiveTextEditor()?.getLastCursor().moveToEndOfLine()
      atom.workspace.getActiveTextEditor()?.getLastCursor().moveDown(1)
      atom.workspace.getActiveTextEditor()?.getLastCursor().moveToBeginningOfLine()
      # ----------------- Get cursor status at start of line -------------------
      cursorPointStart = atom.workspace.getActiveTextEditor()?.getCursorBufferPosition()
      # ----------------- Move cursor to end of line -------------------
      atom.workspace.getActiveTextEditor()?.getLastCursor().moveToEndOfLine()
      # ----------------- Get cursor status at end of line -------------------
      cursorPoint = atom.workspace.getActiveTextEditor()?.getCursorBufferPosition()
      # ----------------- Check for row being a comment -------------------
      thisLineComment = atom.workspace.getActiveTextEditor()?.isBufferRowCommented(cursorPoint.row)
      # ----------------- If starting row was not empty -------------------
      if rowStartBlank is false
        # ----------------- If start at comment, and current line is not comment -------------------
        if startLineComment is true and thisLineComment is false
          atom.workspace.getActiveTextEditor()?.getLastCursor().moveToEndOfLine()
          # Move to start of line
          atom.workspace.getActiveTextEditor()?.getLastCursor().moveToBeginningOfLine()
          break
        # ----------------- If start at NOT comment, and current line IS comment -------------------
        if startLineComment is false and thisLineComment is true
          atom.workspace.getActiveTextEditor()?.getLastCursor().moveToEndOfLine()
          # Move to start of line
          atom.workspace.getActiveTextEditor()?.getLastCursor().moveToBeginningOfLine()
          break
        # ----------------- If start NOT empty and current IS empty -------------------
        if cursorPointStart.column == 0 and cursorPoint.column == 0
          atom.workspace.getActiveTextEditor()?.getLastCursor().moveToEndOfLine()
          # Move to start of line
          atom.workspace.getActiveTextEditor()?.getLastCursor().moveToBeginningOfLine()
          break
      # ----------------- If Starting Row was blank -------------------
      else
        # ----------------- If this row also blank, do nothing -------------------
        if cursorPointStart.column == 0 and cursorPoint.column == 0
        # ----------------- If this row not blank, stop -------------------
        else
          atom.workspace.getActiveTextEditor()?.getLastCursor().moveToEndOfLine()
          # Move to start of line
          atom.workspace.getActiveTextEditor()?.getLastCursor().moveToBeginningOfLine()
          break
        # Move to start of line
        atom.workspace.getActiveTextEditor()?.getLastCursor().moveToBeginningOfLine()
      # ----------------- To Prevent run-away loops -------------------
      if i == 30
        atom.workspace.getActiveTextEditor()?.getLastCursor().moveToEndOfLine()
        break
      # Move to start of line
      atom.workspace.getActiveTextEditor()?.getLastCursor().moveToBeginningOfLine()
```



It might be easier to do this from scratch...







