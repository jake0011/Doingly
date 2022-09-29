import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'event.dart';
import 'event_editing_page.dart';
import 'event_provider.dart';

class EventViewPage extends StatelessWidget {
  final Event event;
  const EventViewPage({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: const CloseButton(),
          title: Text('DETAILS'),
          backgroundColor: Color(0xffF4A18A),
          actions: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => EventEditingPage(
                    event: event,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                final provider =
                    Provider.of<EventProvider>(context, listen: false);

                provider.deleteEvent(event);
              },
            ),
          ],

          //  buildViewingActions(context, event),
        ),
        body: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            buildDateTime(event),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                ("Personal Details"),
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                ("From:"),
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                event.from.toString(),
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                ("To:"),
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                event.to.toString(),
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Program/Class Name:",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              event.title,
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              event.descriptiom,
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ],
        ),
      );

  Widget buildDateTime(Event event) {
    return Column(
      children: [
        buildDate(event.isAllDay ? 'All-day' : 'From', event.from),
        if (!event.isAllDay) buildDate('To', event.to),
      ],
    );
  }

  Widget buildDate(String title, DateTime date) {
    return Container();
  }

  // buildViewingActions(BuildContext context, Event event) {
  //   IconButton(
  //     icon: Icon(Icons.edit),
  //     onPressed: () => Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (context) => EventEditingPage(
  //           event: event,
  //         ),
  //       ),
  //     ),
  //   );
  //   IconButton(
  //     icon: Icon(Icons.delete),
  //     onPressed: () {
  //       final provider = Provider.of<EventProvider>(context, listen: false);

  //       provider.deleteEvent(event);
  //     },
  //   );
  // }
}
