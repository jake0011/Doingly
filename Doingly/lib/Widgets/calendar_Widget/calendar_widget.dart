import 'package:flutter/material.dart';
import 'package:Doingly/Widgets/calendar_Widget/event_provider.dart';
import '../../../../Widgets/calendar_Widget/tasks_widget.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:provider/provider.dart';
import 'event_data_source.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Consumer widget to listen for changes in the EventProvider
    return Consumer<EventProvider>(
      builder: (context, prov, _) {
        return SfCalendar(
          view: CalendarView.month,
          dataSource: EventDataSource(prov.events),
          initialSelectedDate: DateTime.now(),
          cellBorderColor: Colors.transparent,
          onLongPress: (details) {
            prov.setDate(details.date!);

            // Show the bottom sheet with the TaskWidget
            showBottomSheet(
              context: context,
              builder: (context) => TaskWidget(),
            );
          },
        );
      },
    );
  }
}
