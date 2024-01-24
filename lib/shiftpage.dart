import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class shiftpage extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('シフト管理')),
      body: TableCalendar(
        firstDay: DateTime.utc(1900, 1, 1),
        lastDay: DateTime.utc(2100, 12, 31),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
        calendarFormat: _calendarFormat,
        onDaySelected: (currentDay, focusedDay) {
          setState(() {
            _selectedDay = currentDay;
            _focusedDay = focusedDay;
          });
        },
        onFormatChanged: (format) => setState(() {
          _calendarFormat = format;
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Money',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note),
            label: 'Note',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
