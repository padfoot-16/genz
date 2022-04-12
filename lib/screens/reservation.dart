import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class reservation extends StatefulWidget {
  const reservation({ Key? key }) : super(key: key);

  @override
  State<reservation> createState() => _reservationState();
}

class _reservationState extends State<reservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center( child:TableCalendar(
  firstDay: DateTime.utc(2010, 10, 16),
  lastDay: DateTime.utc(2030, 3, 14),
  focusedDay: DateTime.now(),
)
)
    );
  }
}