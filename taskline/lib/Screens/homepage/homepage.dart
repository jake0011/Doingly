// ignore_for_file: prefer_const_constructors

// ignore: unused_import

import 'package:flutter/material.dart';
import 'package:taskline/Screens/homepage/profilepage/page/profile_page.dart';
import 'package:taskline/constants.dart';
import 'package:taskline/Screens/homepage/DoinglyPage/todo.dart';
import '../../Widgets/calendar_Widget/main.dart';
import 'DoinglyPage/doingly_page.dart';
import 'package:taskline/Widgets/todo_item.dart';

import 'global.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> _items = List<int>.generate(10, (int index) => index);
  final String title = 'User Profile';
  final todolist = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        home: SafeArea(
          child: Scaffold(
            body: Column(children: [
              Expanded(
                flex: 10,
                child: MyDoinglyPage(),
              ),
            ]),
            appBar: AppBar(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                backgroundColor: tdBGColor,
                elevation: 0.0,
                title: Text("Home", style: TextStyle(color: Colors.black)),
                titleSpacing: -10.0,
                actions: [
                  Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.add_task,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const MainPage();
                          }),
                        );
                      },
                    ),
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.lightbulb_outline_rounded,
                          color: Colors.black,
                        ),
                        tooltip: "Suggestions",
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (BuildContext context) {
                              return TaskLists();
                            },
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.account_circle,
                          color: Colors.black,
                        ),
                        tooltip: "Profile",
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return MaterialApp(
                                debugShowCheckedModeBanner: false,
                                theme: ThemeData(
                                  primaryColor: listColor,
                                  dividerColor: Colors.black,
                                ),
                                title: title,
                                home: Profile(),
                              );
                            },
                          ));
                        },
                      ),
                    ],
                  ),
                ]),
            backgroundColor: tdBGColor,
          ),
        ));
  }

  Profile() => ProfilePage();

  SizedBox TaskLists() {
    return SizedBox(
      height: 450,
      child: ReorderableListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(
              10,
              //   bottom: 15,
              //   left: 15,
              //   right: 15,
            ),
            padding: const EdgeInsets.all(10),
            key: Key('$index'),
            width: MediaQuery.of(context).size.width,
            height: 70,
            decoration: BoxDecoration(
              color: listColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: listColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "previous task",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          );
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
    );
  }
}
