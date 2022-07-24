// ignore_for_file: file_names, empty_statements, dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        BuildContext,
        Container,
        EdgeInsets,
        ListTile,
        Radio,
        ReorderableListView,    
        Widget;
// ignore: implementation_imports

import '../global.dart';

class LeetTodo extends StatefulWidget {
  const LeetTodo({Key? key}) : super(key: key);
  // final String title;
  // // ignore: use_key_in_widget_constructors
  // const LeetTodo(this.title);
  @override
  State<LeetTodo> createState() => _LeetTodoState();
}

enum SingingCharacter { lafayette, jefferson }

class _LeetTodoState extends State<LeetTodo> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    

    return Container(
        // ignore: prefer_const_constructors
        margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
        height: 100,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            color: listColor,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(children: <Widget>[
          Flexible(
            child: ReorderableListView(
              onReorder: (int oldIndex, int newIndex) {
                setState(() {
                  if (oldIndex < newIndex) {
                    newIndex -= 1;
                  }
                  final int item = _items.removeAt(oldIndex);
                  _items.insert(newIndex, item);
                });
              },
              children: [
                ListTile(
                  title: const Text('Add Task'),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ]));

// Widget _buildListTile(BuildContext context, Task item) {
//     return ListTile(
//       key: Key(item.taskId.toString()),
//       title: LeetTodo(
//         title: item.title,
//       ),
//     );
//   }

//  class _LeetTodoState extends State<LeetTodo> {
//   final List<int> _items = List<int>.generate(50, (int index) => index);

    // @override
    // Widget build(BuildContext context) {
    //   final ColorScheme colorScheme = Theme.of(context).colorScheme;
    //   final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    //   final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
//
//     return ReorderableListView(
//       padding: const EdgeInsets.symmetric(horizontal: 40),
//       children: <Widget>[
//         for (int index = 0; index < _items.length; index += 1)
//           ListTile(
//             key: Key('$index'),
//             tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
//             title: Text('Item ${_items[index]}'),
//           ),
//       ],
//       onReorder: (int oldIndex, int newIndex) {
//         setState(() {
//           if (oldIndex < newIndex) {
//             newIndex -= 1;
//           }
//           final int item = _items.removeAt(oldIndex);
//           _items.insert(newIndex, item);
//         });
//       },
//     );
//   }
  }
}
