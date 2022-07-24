import 'package:flutter/material.dart' show BuildContext, Colors, Container, EdgeInsets, Key, ListView, State, StatefulWidget, Widget;
import 'package:todo_app/components/Widgets/leetTodo.dart';

class MyDoinglyPage extends StatefulWidget {
  const MyDoinglyPage({Key? key}) : super(key: key);

  @override
  State<MyDoinglyPage> createState() => _MyDoinglyPageState();
}

class _MyDoinglyPageState extends State<MyDoinglyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.brown,
        child: ListView(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(top: 300),
            children: getList()));
  }

  List<Widget> getList() {
    List<LeetTodo> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(const LeetTodo());
    }
    return list;
  }
}
  // ,
  // Container(height: 100, color: Colors.green),
  // Container(height: 100, color: Colors.indigo),
  // Container(height: 100, color: Colors.blue)
  // return getList();


