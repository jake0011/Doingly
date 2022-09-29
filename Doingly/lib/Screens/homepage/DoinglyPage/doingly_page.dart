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
    // ignore: newline-before-return
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  child: Text(
                    'All ToDos',
                    style: DoinglyTitleStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 55,
                ),
                Expanded(
                  child: Theme(
                    data: ThemeData(
                      canvasColor: tdBGColor,
                    ),
                    child: ListView(
                      children: [
                        for (ToDo todoo in _foundToDo.reversed)
                          ToDoItem(
                            todo: todoo,
                            onToDoChanged: _handleToDoChange,
                            onDeleteItem: _deleteToDoItem,
                          ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                          right: 20,
                          left: 5,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: listColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _todoController,
                          decoration: InputDecoration(
                              hintText: 'Add a new task',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 18,
                        right: 0,
                      ),
                      child: ElevatedButton(
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        onPressed: () {
                          _addToDoItem(_todoController.text);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 160, 109, 91),
                          minimumSize: Size(60, 60),
                          elevation: 10,
                        ),
                      ),
                    ),
                  ]),
                ),
              ]),
        )
      ],
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
    setState(() {
      todosList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: toDo,
      ));
    });
    _todoController.clear();
  }

  void _runFilter(String enteredKeyword) {
    List<ToDo> results = [];
    if (enteredKeyword.isEmpty) {
      results = todosList;
    } else {
      results = todosList
          .where((item) => item.todoText!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundToDo = results;
    });
  }

// --------------------------------------------

  // ReorderableListView tasks(BuildContext context) {
  //   return ReorderableListView.builder(
  //     itemBuilder: (BuildContext context, int index) {
  //       return Container(
  //         margin: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
  //         padding: const EdgeInsets.all(5),
  //         key: Key('$index'),
  //         width: MediaQuery.of(context).size.width,
  //         height: 80,
  //         decoration: BoxDecoration(
  //           color: listColor,
  //           borderRadius: BorderRadius.circular(10),
  //           border: Border.all(color: listColor),
  //         ),
  //         child: ListTile(
  //           leading: Icon(Icons.check_box_outline_blank),
  //           trailing: Icon(Icons.delete),
  //           title: TextField(
  //             decoration: InputDecoration(
  //                 hintText: "Add a",
  //                 border: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(10))),
  //             style: TextStyle(
  //                 // decoration: TextDecoration.lineThrough,
  //                 ),
  //           ),
  //         ),
  //       );
  //     },
  //     itemCount: _items.length,
  //     onReorder: (int oldIndex, int newIndex) {
  //       setState(() {
  //         if (oldIndex < newIndex) {
  //           newIndex -= 1;
  //         }
  //         final int item = _items.removeAt(oldIndex);
  //         _items.insert(newIndex, item);
  //       });
  //     },
  //     buildDefaultDragHandles: true,
  //   );
  // }

// --------------------------------------------
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.brown,
//         child: ReorderableListView.builder(
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                   margin:
//                       const EdgeInsets.only(bottom: 15, left: 15, right: 15),
//                   padding: const EdgeInsets.all(10),
//                   key: Key('$index'),
//                   width: MediaQuery.of(context).size.width,
//                   height: 100,
//                   decoration: BoxDecoration(
//                       color: listColor,
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(color: listColor)),
//                   child: const Text("Add a Task")
//                   );
//             },
//             itemCount: _items.length,
//             onReorder: (int oldIndex, int newIndex) {
//               setState(() {
//                 if (oldIndex < newIndex) {
//                   newIndex -= 1;
//                 }
//                 final int item = _items.removeAt(oldIndex);
//                 _items.insert(newIndex, item);
//               });
//             }));
//   }

// --------------------------------------------
//     List<LeetTodo> list = [];
//     for (int i = 0; i < 10; i++) {
//       list.add(const LeetTodo());
//     }
//     return list;
//   }
// }
  // ,
  // Container(height: 100, color: Colors.green),
  // Container(height: 100, color: Colors.indigo),
  // Container(height: 100, color: Colors.blue)
  // return getList();

}
// --------------------------------------------

//  Positioned(
//           left: (size.width * 0.5) - 25,
//           top: 140,
//           child: GestureDetector(
//             onTap: () {
//               setState(() {
//                 _items.add(0);
//               });
//             },
//             child: CircleAvatar(
//               backgroundColor: listColor,
//               radius: 25,
//               child: const Center(
//                 child: Icon(
//                   Icons.add,
//                   size: 40,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ),