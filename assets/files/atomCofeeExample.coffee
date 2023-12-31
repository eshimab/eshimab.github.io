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