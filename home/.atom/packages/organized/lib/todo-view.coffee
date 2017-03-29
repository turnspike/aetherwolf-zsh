{View} = require 'space-pen'

class TodoView extends View
  @content: (todo) ->
    @todo = todo
    todoText = if todo.text != 'C' then @textWithPriority(todo.text, todo.priority) else todo.text

    @li class: 'todoitem', =>
      @a 'data-file': todo.file, 'data-line': todo.line, 'data-column': todo.column, class: 'icon fa fa-square-o', click: 'checkClick'
      @span 'data-file': todo.file, 'data-line': todo.line, 'data-column': todo.column, click: 'todoclick', text: @raw(todoText)

  @textWithPriority: (text, priority) ->
    todoText = ""
    if priority == "A"
      todoText += '<span class="icon fa fa-arrow-up" style="color: green"/>'
    else if priority == "B"
      todoText += '<span class="icon fa fa-arrow-up"/>'
    else if priority == "D"
      todoText += '<span class="icon fa fa-arrow-down"/>'
    else if priority == "E"
      todoText += '<span class="icon fa fa-arrow-down" style="color: red"/>'

    todoText += text
    return todoText

  visibility: 'show'

  checkClick: (event) ->
    file=event.target.dataset['file']
    line=event.target.dataset['line']
    column=event.target.dataset['column']

    options =
      initialLine: (1*line)-1
      initialColumn: (1*column)
      pending: true

    atom.workspace.open(file, options).then (editor) =>
      textEditorView = atom.views.getView(editor)
      if event.target.className.indexOf('fa-square-o') >= 0
        atom.commands.dispatch(textEditorView, "organized:setTodoCompleted")
        event.target.className = 'icon fa fa-check-square-o'
        @visibility = 'hidden'
      else if event.target.className.indexOf('fa-check-square-o') >= 0
        atom.commands.dispatch(textEditorView, "organized:setTodo")
        event.target.className = 'icon fa fa-square-o'
        @visibility = 'show'


      setTimeout (() => event.target.parentNode.className = @visibility), 5000

  todoclick: (event) ->
    file=event.target.dataset['file']
    line=event.target.dataset['line']
    column=event.target.dataset['column']

    options =
      initialLine: (1*line)-1
      initialColumn: 0
      pending: true
    atom.workspace.open file, options

module.exports = TodoView
