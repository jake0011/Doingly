import 'package:flutter/material.dart';
import 'package:todo_app/components/DoinglyPage/doingly_page.dart';
import 'package:todo_app/components/global.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.brown,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Stack(
              //This stack deals with the frame below the app bar
              children: <Widget>[
                TabBarView(
                  children: [
                    Container(
                      color: Colors.brown,
                      // ignore: prefer_const_constructors
                      child: Padding(
                        padding: const EdgeInsets.only(top: 210),
                        child: const MyDoinglyPage(),
                      ),
                    ),
                    Container(
                      color: listColor,
                    ),
                    Container(
                      color: Colors.lightGreen,
                    ),
                    // Container(
                    //   color: Colors.red,
                    // ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 50),
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
                      Container()
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(
                      top: 120, left: MediaQuery.of(context).size.width * 0.4),
                  child: FloatingActionButton(
                    backgroundColor: listColor,
                    onPressed: () {},
                    child: const Icon(Icons.add, size: 75, color: Colors.black),
                  ),
                )
              ],
            ),
            appBar: AppBar(
              elevation: 0.0,
              title: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.perm_identity),
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                  ),
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.red,
              ),
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.brown,
          ),
        ),
      ),
    );
  }
}
