class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Hello Jeph', isDone: true ),
      ToDo(id: '02', todoText: 'We  understand, you don\'t think  a TodoApp is great', isDone: true ),
      ToDo(id: '03', todoText: 'But', ),
      ToDo(id: '04', todoText: 'It took us alot to get this done', ),
      ToDo(id: '05', todoText: 'So please consider', ),
      ToDo(id: '06', todoText: 'With all remorse, Leetcoders, Thanks!', ),
    ];
  }
}