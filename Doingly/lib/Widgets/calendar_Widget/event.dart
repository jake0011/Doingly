import 'package:flutter/material.dart';

class Event {
  final String title;
  final String descriptiom;
  final DateTime from;
  final DateTime to;
  final Color backgroundColor;
  final bool isAllDay;

  const Event({
    required this.title,
    required this.descriptiom,
    required this.from,
    required this.to,
    this.backgroundColor = Colors.black,
    this.isAllDay = false,
  });
}
