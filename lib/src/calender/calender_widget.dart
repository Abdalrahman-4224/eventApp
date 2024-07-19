import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  CalenderWidgetState createState() => CalenderWidgetState();
}

class CalenderWidgetState extends State<CalenderWidget> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Container(
   
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Stack(
        children: [
          // Background with opacity
          Opacity(
            opacity: 0.15,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffE85EFF),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          // Calendar without opacity
          TableCalendar(
            rowHeight: 48,
            
            daysOfWeekHeight: 20,

            weekendDays: const [DateTime.friday,DateTime.saturday],
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            availableCalendarFormats: const {
              CalendarFormat.month: 'Month',
            }, // Only show month view
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay; // Update `_focusedDay` here as well
              });
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              weekendStyle: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              dowTextFormatter: (date, locale) {
                // Define the custom labels for each day
                final labels = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
                return labels[date.weekday % 7]; // Adjusting for 1-based index of weekday
              },
            ),
            calendarStyle: const CalendarStyle(
              outsideDaysVisible: false,
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            headerStyle: const HeaderStyle(
              titleTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),
              formatButtonVisible: false, // Hide the format toggle button
              titleCentered: true,
            ),
            calendarBuilders: CalendarBuilders(
              defaultBuilder: (context, day, focusedDay) {
                return Center(
                  child: Text(
                    '${day.day}',
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                );
              },
              todayBuilder: (context, day, focusedDay) {
                return Center(
                  child: Text(
                    '${day.day}',
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
              selectedBuilder: (context, day, focusedDay) {
                return Center(
                  child: Text(
                    '${day.day}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
              outsideBuilder: (context, day, focusedDay) {
                return Center(
                  child: Text(
                    '${day.day}',
                    style: const TextStyle(color: Colors.grey, fontSize: 18)
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}