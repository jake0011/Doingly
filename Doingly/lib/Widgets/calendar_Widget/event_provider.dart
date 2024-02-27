import 'package:flutter/cupertino.dart';
import 'event.dart';

/// A provider class that manages events and notifies listeners when changes occur.
class EventProvider extends ChangeNotifier {
  final List<Event> _events = [];
  DateTime _selectedDate = DateTime.now();

  /// Returns the list of events.
  List<Event> get events => _events;

  /// Returns the selected date.
  DateTime get selectedDate => _selectedDate;

  /// Sets the selected date.
  void setDate(DateTime date) => _selectedDate = date;

  /// Returns the events of the selected date.
  List<Event> get eventsOfSelectedDate => _events;

  /// Adds an event to the list of events.
  void addEvent(Event event) {
    _events.add(event);
    notifyListeners();
  }

  /// Deletes an event from the list of events.
  void deleteEvent(Event event) {
    _events.remove(event);
    notifyListeners();
  }

  /// Edits an existing event with a new event.
  void editEvent(Event newEvent, Event oldEvent) {
    final index = _events.indexOf(oldEvent);
    _events[index] = newEvent;
    notifyListeners();
  }
}
