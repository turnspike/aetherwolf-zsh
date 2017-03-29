# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

atom.commands.add 'atom-text-editor',
  'user:toggle-vim-mode': (event) ->
    if atom.packages.isPackageDisabled("vim-mode-plus")
      atom.packages.enablePackage("vim-mode-plus")
    else
      atom.packages.disablePackage("vim-mode-plus")

# # Indents files on save.
# atom.workspace.observeTextEditors (editor) ->
#   excludedGrammars = ['source.coffee', 'source.yaml']
#   editor.buffer.onWillSave ->
#     currentGrammar = editor.getGrammar()?.scopeName
#     return if currentGrammar in excludedGrammars
#     editor.autoIndentBufferRows 0, editor.getBuffer().getLineCount() - 1
