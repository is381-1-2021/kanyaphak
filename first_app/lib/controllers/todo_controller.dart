import 'dart:async';

import 'package:first_app/models/todo_model.dart';
import 'package:first_app/services/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TodoController{
  final Services services;
  List<Todo> todos = List.empty();

  StreamControllerbool> onSyncController = Streamcontroller();
  Stream<bool> get onSync => onSyncController.stream;

  TodoController(this.services);

  Future<List<Todo>> fetchTodos() async {
    onSyncController.add(true);
    todos = await services.getTodos();
    onSyncController.add(false);

    return todos;
  }
}