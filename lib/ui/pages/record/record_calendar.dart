// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_calendar_carousel/classes/event.dart';
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
// import 'package:intl/intl.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:tennis_game_management/components/unit/appbar/tgm_app_bar_not_index.dart';
// import 'package:tennis_game_management/components/unit/empty_place/empty_place.dart';
// import 'package:tennis_game_management/resources/colors.dart';
// //import 'package:medicine_reminder/src/ui/calendar/event.dart';
//
// class RecordCalendarPage extends StatefulWidget {
//   @override
//   RecordCalendarPageState createState() => RecordCalendarPageState();
// }
//
// class RecordCalendarPageState extends State<RecordCalendarPage> {
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;   //追記
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return new Scaffold(
//
//       appBar: TgmAppBarNotIndex(title: "날짜"),
//       body: Column(
//         children: [
//           Container(
//             child: TableCalendar(
//               headerStyle: HeaderStyle(
//                 headerMargin: EdgeInsets.only(left: 40, top: 10, right: 40, bottom: 10),
//                 titleCentered: true,
//                 formatButtonVisible: false,
//                 leftChevronIcon: Icon(Icons.arrow_left),
//                 rightChevronIcon: Icon(Icons.arrow_right),
//                 titleTextStyle: const TextStyle(fontSize: 17.0),
//               ),
//               locale: 'ko-KR',
//               firstDay: DateTime.utc(2020, 1, 1),
//               lastDay: DateTime.utc(2030, 12, 31),
//
//               calendarStyle: CalendarStyle(
//                 outsideDaysVisible: true,
//                 // selectedDecoration: Decoration(
//                 //     createBoxPainter:Colors.transparent
//                 // )
//                 // weekendStyle: TextStyle().copyWith(color: Colors.red),
//                 // holidayStyle: TextStyle().copyWith(color: Colors.blue[800]),
//               ),
//
//
//
//               focusedDay: _focusedDay,
//               calendarFormat: _calendarFormat,
//               onFormatChanged: (format) {
//                 if (_calendarFormat != format) {
//                   setState(() {
//                     _calendarFormat = format;
//                   });
//                 }
//               },
//               selectedDayPredicate: (day) {
//                 return isSameDay(_selectedDay, day);
//               },
//               onDaySelected: (selectedDay, focusedDay) {
//                 if (!isSameDay(_selectedDay, selectedDay)) {
//                   setState(() {
//                     _selectedDay = selectedDay;
//                     _focusedDay = focusedDay;
//                   });
//                 }
//               },
//             ),
//             margin: EdgeInsets.all(20),
//           ),
//
//           Container(
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 primary: BUTTON_LIGHT_GREEN_COLOR,
//               ),
//               onPressed: () {},
//               child: const Text(
//                 '날짜입력',
//                 style: TextStyle(
//                     fontSize: 16
//                 ),
//               ),
//             ),
//             width: double.infinity,
//             height: 50,
//           ),
//
//         ],
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       )
//     );
//
//   }
// }
