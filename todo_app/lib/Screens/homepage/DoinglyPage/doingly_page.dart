import 'package:flutter/material.dart';
// show Border, BorderRadius, BoxDecoration, BuildContext, Center, CircleAvatar, Colors, Column, Container, EdgeInsets, Expanded, Icon, Icons, Key, MediaQuery, Positioned, Radius, ReorderableListView, Stack, State, StatefulWidget, Text, Theme, ThemeData, Widget;
import 'package:todo_app/models/global.dart';

class MyDoinglyPage extends StatefulWidget {
  const MyDoinglyPage({Key? key}) : super(key: key);

  @override
  State<MyDoinglyPage> createState() => _MyDoinglyPageState();
}

class _MyDoinglyPageState extends State<MyDoinglyPage> {
  // final List<int> _items = List<int>.generate(15, (int index) => index);
  final List<int> _items = List<int>.generate(10, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(children: [
          Container(
            padding: const EdgeInsets.only(left: 50),
            margin: const EdgeInsets.only(bottom: 40),
            height: 160,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Doingly",
                  style: DoinglyTitleStyle,
                ),
                // Container()
              ],
            ),
          ),
          Expanded(
            child: Container(
                color: Colors.brown,
                child: Theme(
                  data: ThemeData(
                    canvasColor: Colors.transparent,
                  ),
                  child: ReorderableListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: const EdgeInsets.only(
                              bottom: 15, left: 15, right: 15),
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
                    },
                    buildDefaultDragHandles: true,
                  ),
                )),
          ),
        ]),
        Positioned(
            left: (size.width * 0.5) - 25,
            top: 140,
            child: CircleAvatar(
              backgroundColor: listColor,
              radius: 25,
              child: const Center(
                  child: Icon(
                Icons.add,
                size: 40,
                color: Colors.white,
              )),
            )),
      ],
    );
  }
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

// //   List<Widget> getList() {
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
