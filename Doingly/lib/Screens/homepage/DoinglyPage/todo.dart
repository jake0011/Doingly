/// Represents a ToDo item.
class ToDo {
  String? id; // Unique identifier for the ToDo item.
  String? todoText; // The text of the ToDo item.
  bool isDone; // Indicates whether the ToDo item is done or not.

  /// Constructor for the ToDo class.
  ///
  /// [id] - The unique identifier for the ToDo item.
  /// [todoText] - The text of the ToDo item.
  /// [isDone] - Indicates whether the ToDo item is done or not. Default is false.
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  /// Returns an empty list of ToDo items.
  static List<ToDo> todoList() {
    return [];
  }
}
