// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'DoinglyPage/doingly_page.dart';

import 'global.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> _items = List<int>.generate(10, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.brown,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.brown,
            child: const MyDoinglyPage(),
          ),
          appBar: AppBar(
            elevation: 0.0,
            title: Text("Home", style: TextStyle(color: Colors.brown)),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.lightbulb_outline_rounded,
                    color: Colors.black,
                  ),
                  tooltip: "Suggestions",
                  onPressed: () {
                    showModalBottomSheet<void>(
                        context: context,
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 450,
                            child: ReorderableListView.builder(
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    margin: const EdgeInsets.only(
                                      bottom: 15,
                                      left: 15,
                                      right: 15,
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    key: Key('$index'),
                                    width: MediaQuery.of(context).size.width,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 178, 192, 48),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: listColor)),
                                    child: const Text(
                                      "Add a Task",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 20),
                                    ));
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
                        });
                  }),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.brown,
                  ),
                  tooltip: "Profile",
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                      return Scaffold(
                          appBar: AppBar(
                        title: const Text('Next page'),
                      ));
                    }));
                  }),
            ],
            backgroundColor: Colors.white,
          ),
          backgroundColor: Colors.brown,
        ),
      ),
    );
  }
}
