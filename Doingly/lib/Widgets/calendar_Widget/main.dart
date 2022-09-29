// import 'package:calendarwidget/event_editing_page.dart';
// import 'package:calendarwidget/event_provider.dart';
import 'package:Doingly/Screens/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

import 'calendar_widget.dart';
import 'event_editing_page.dart';
import 'event_provider.dart';
// import 'event_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (BuildContext context) => EventProvider(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainPage(),
        ),
      );
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF4A18A),
          title: const Text('Calender'),
          leading: AppBar(
            backgroundColor: Color(0xffF4A18A),
            shadowColor: Color(0xffF4A18A),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.arrow_back_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                                title: '',
                              )),
                    );
                  },
                );
              },
            ),
          ),
          centerTitle: true,
        ),
        body: const CalendarWidget(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: const Color(0xffF4A18A),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EventEditingPage()),
            );
          },
        ),
      );
}
