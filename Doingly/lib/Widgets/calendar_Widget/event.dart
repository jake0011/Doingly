import 'package:flutter/material.dart';

/// Represents an event in the calendar.
class Event {
  final String title; // The title of the event.
  final String description; // The description of the event.
  final DateTime from; // The start date and time of the event.
  final DateTime to; // The end date and time of the event.
  final Color backgroundColor; // The background color of the event.
  final bool isAllDay; // Indicates if the event is an all-day event.

  const Event({
    required this.title,
    required this.description,
    required this.from,
    required this.to,
    this.backgroundColor = Colors.black,
    this.isAllDay = false,
  });
}
