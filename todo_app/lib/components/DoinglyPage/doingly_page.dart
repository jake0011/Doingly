import 'package:flutter/material.dart'
    show
        Border,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Colors,
        Container,
        EdgeInsets,
        Key,
        MediaQuery,
        ReorderableListView,
        State,
        StatefulWidget,
        Text,
        Widget;
import 'package:todo_app/components/global.dart';

class MyDoinglyPage extends StatefulWidget {
  const MyDoinglyPage({Key? key}) : super(key: key);

  @override
  State<MyDoinglyPage> createState() => _MyDoinglyPageState();
}

class _MyDoinglyPageState extends State<MyDoinglyPage> {
  final List<int> _items = List<int>.generate(15, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.brown,
        child: ReorderableListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  margin:
                      const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                  padding: const EdgeInsets.all(10),
                  key: Key('$index'),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      color: listColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: listColor)),
                  child: const Text("Add a Task"));
            },
            itemCount: _items.length,
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final int item = _items.removeAt(oldIndex);
                _items.insert(newIndex, item);
              });
            }));
  }

//   List<Widget> getList() {
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
