import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'event.dart';
import 'event_editing_page.dart';
import 'event_provider.dart';

class EventViewPage extends StatelessWidget {
  final Event event;

  const EventViewPage({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
        title: const Text('Your Timetable'),
        backgroundColor: const Color(0xffF4A18A),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Navigate to the EventEditingPage to edit the event
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => EventEditingPage(
                    event: event,
                  ),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // Delete the event using the EventProvider
              final provider = Provider.of<EventProvider>(context, listen: true);
              provider.deleteEvent(event);
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: <Widget>[
          buildDateTime(event),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: const Text(
              "Your Timetable",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: const Text(
              "From:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              event.from.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: const Text(
              "To:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text(
              event.to.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Program/Class Name:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            event.title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            event.descriptiom,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

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
}
