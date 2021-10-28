class Todo {
  final int userId;
  final int id;
  final String title;
  bool completed;

  Todo(this.userId, this.id, this.title, this.complete);

  factory Todo.fromJson(
    Map<String, dymanic> json,
  ) {
    return Todo(
      json['userId'] as int,
      json['id'] as int,
      json['title'] as String,
      json['completed'] as bool,
    );
  }
}

class AllTodos {
  final List<Todo> todos;

  AllTodos(this.todos);

  factory AllTodos.fromJason(
    List<dynamic> json,
  ) {
    var x = json.map((record) => Todo.fromJson(record)).toList();

    return AllTodos(x);
  }
}
