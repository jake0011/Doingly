import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'event.dart';

/// A data source class for the calendar widget that provides event data.
class EventDataSource extends CalendarDataSource {
  EventDataSource(List<Event> appointments) {
    this.appointments = appointments;
  }

  /// Retrieves the event at the specified index.
  Event getEvent(int index) => appointments![index] as Event;

  @override
  /// Retrieves the start time of the event at the specified index.
  DateTime getStartTime(int index) => getEvent(index).from;

  @override
  /// Retrieves the end time of the event at the specified index.
  DateTime getEndTime(int index) => getEvent(index).to;

  @override
  /// Retrieves the subject (title) of the event at the specified index.
  String getSubject(int index) => getEvent(index).title;

  @override
  /// Retrieves the color of the event at the specified index.
  Color getColor(int index) => getEvent(index).backgroundColor;

  @override
  /// Checks if the event at the specified index is an all-day event.
  bool isAllDay(int index) => getEvent(index).isAllDay;
}