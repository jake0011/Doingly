// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:Doingly/constants.dart';
// show Border, BorderRadius, BoxDecoration, BuildContext, Center, CircleAvatar, Colors, Column, Container, EdgeInsets, Expanded, Icon, Icons, Key, MediaQuery, Positioned, Radius, ReorderableListView, Stack, State, StatefulWidget, Text, Theme, ThemeData, Widget;
import 'package:Doingly/models/global.dart';
import 'package:Doingly/Screens/homepage/DoinglyPage/todo.dart';
import 'package:Doingly/Widgets/todo_item.dart';

class MyDoinglyPage extends StatefulWidget {
  const MyDoinglyPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDoinglyPage> createState() => _MyDoinglyPageState();
}

class _MyDoinglyPageState extends State<MyDoinglyPage> {
  final todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();
  final List<int> _items = [];

  @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All ToDos',
          style: DoinglyTitleStyle,
        ),
        backgroundColor: tdBGColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              itemCount: _foundToDo.length,
              itemBuilder: (context, index) {
                return ToDoItem(
                  todo: _foundToDo[index],
                  onToDoChanged: _handleToDoChange,
                  onDeleteItem: _deleteToDoItem,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: listColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _todoController,
                      decoration: InputDecoration(
                        hintText: 'Add a new task',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    _addToDoItem(_todoController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: listColor,
                    minimumSize: Size(60, 60),
                    elevation: 10,
                  ),
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String toDo) {
    if (toDo.isNotEmpty) {
      setState(() {
        todosList.add(
          ToDo(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            todoText: toDo,
          ),
        );
      });
      _todoController.clear();
    }
  }
}
