// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_calendar_carousel/classes/event.dart';
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
// import 'package:intl/intl.dart';
// import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_not_index.dart';
// import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
// import 'package:tennis_game_management/resources/colors.dart';
// //import 'package:medicine_reminder/src/ui/calendar/event.dart';
//
// class RecordCalendarPage extends StatefulWidget {
//   @override
//   RecordCalendarPageState createState() => RecordCalendarPageState();
// }
//
// class RecordCalendarPageState extends State<RecordCalendarPage> {
//   DateTime _currentDate = DateTime.now();
//   DateTime _currentDate2 = DateTime.now();
//   String _currentMonth = DateFormat.yMMM().format(DateTime.now());
//   DateTime _targetDateTime = DateTime.now();
//
//   String title="";
//
//   Map<DateTime, List<Event>> selectedEvents = <DateTime, List<Event>>{};
//   DateTime selectedDay = DateTime.now();
//   DateTime focusedDay = DateTime.now();
//
//   TextEditingController _eventController = TextEditingController();
//
//   CalendarCarousel? _calendarCarouselNoHeader;
//
//   // static Widget _eventIcon = new Container(
//   //   decoration: new BoxDecoration(
//   //       color: Colors.white,
//   //       borderRadius: BorderRadius.all(Radius.circular(1000)),
//   //       border: Border.all(color: Colors.blue, width: 2.0)),
//   //   child: new Icon(
//   //     Icons.person,
//   //     color: Colors.amber,
//   //   ),
//   // );
//
//   // EventList<Event> _markedDateMap = new EventList<Event>(
//   //   events: {
//   //     new DateTime(2020, 2, 10): [
//   //       new Event(
//   //         date: new DateTime(2020, 2, 14),
//   //         title: 'Event 1',
//   //         icon: _eventIcon,
//   //         dot: Container(
//   //           margin: EdgeInsets.symmetric(horizontal: 1.0),
//   //           color: Colors.red,
//   //           height: 5.0,
//   //           width: 5.0,
//   //         ),
//   //       ),
//   //       new Event(
//   //         date: new DateTime(2020, 2, 10),
//   //         title: 'Event 2',
//   //         icon: _eventIcon,
//   //       ),
//   //       new Event(
//   //         date: new DateTime(2020, 2, 15),
//   //         title: 'Event 3',
//   //         icon: _eventIcon,
//   //       ),
//   //     ],
//   //   },
//   // );
//
//   // @override
//   // void initState() {
//   //   _markedDateMap.add(
//   //       new DateTime(2021, 8, 25),
//   //       new Event(
//   //         date: new DateTime(2021, 8, 25),
//   //         title: 'Event 5',
//   //         icon: _eventIcon,
//   //       ));
//   //
//   //   _markedDateMap.add(
//   //       new DateTime(2020, 2, 10),
//   //       new Event(
//   //         date: new DateTime(2020, 2, 10),
//   //         title: 'Event 4',
//   //         icon: _eventIcon,
//   //       ));
//   //
//   //   _markedDateMap.addAll(new DateTime(2019, 2, 11), [
//   //     new Event(
//   //       date: new DateTime(2019, 2, 11),
//   //       title: 'Event 1',
//   //       icon: _eventIcon,
//   //     ),
//   //     new Event(
//   //       date: new DateTime(2019, 2, 11),
//   //       title: 'Event 2',
//   //       icon: _eventIcon,
//   //     ),
//   //     new Event(
//   //       date: new DateTime(2019, 2, 11),
//   //       title: 'Event 3',
//   //       icon: _eventIcon,
//   //     ),
//   //   ]);
//   //   super.initState();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     _calendarCarouselNoHeader = CalendarCarousel<Event>(
//
//       onDayPressed: (DateTime date, List<Event> events) {
//         this.setState(() => _currentDate2 = date);
//         events.forEach((event) => print(event.title));
//       },
//       daysHaveCircularBorder: false,
//       showOnlyCurrentMonthDate: false,
//
//       weekendTextStyle: TextStyle(
//         color: FONT_RED_COLOR,
//       ),
//
//       // thisMonthDayBorderColor: FONT_GRAY_COLOR,
//       weekFormat: false,
//       weekdayTextStyle: TextStyle(
//         fontSize: 14,
//         color: FONT_DARK_GREEN_COLOR
//       ),
// //      firstDayOfWeek: 4,
// //       markedDatesMap: _markedDateMap,
//       height: 600.0,
//       selectedDateTime: _currentDate2,
//       targetDateTime: _targetDateTime,
//       customGridViewPhysics: NeverScrollableScrollPhysics(),
//       showHeader: false,
//
//       // markedDateCustomShapeBorder:
//       // CircleBorder(side: BorderSide(color: FONT_BLUE_COLOR)),
//
//       // markedDateCustomTextStyle: TextStyle(
//       //   fontSize: 18,
//       //   color: Colors.blue,
//       // ),
//
//       // 오늘 색
//       todayTextStyle: TextStyle(
//         color: FONT_WHITE_COLOR,
//       ),
//       todayButtonColor: FONT_GREEN_COLOR,
//       todayBorderColor: Colors.transparent,
//
//
//       // 선택된 색
//       selectedDayTextStyle: TextStyle(
//         color: FONT_WHITE_COLOR,
//       ),
//       selectedDayButtonColor: FONT_BLUE_COLOR,
//       selectedDayBorderColor: Colors.transparent,
//
//       minSelectedDate: _currentDate.subtract(Duration(days: 360)),
//       maxSelectedDate: _currentDate.add(Duration(days: 360)),
//       // prevDaysTextStyle: TextStyle(
//       //   fontSize: 16,
//       //   color: Colors.pinkAccent,
//       // ),
//       // inactiveDaysTextStyle: TextStyle(
//       //   color: Colors.tealAccent,
//       //   fontSize: 16,
//       // ),
//       onCalendarChanged: (DateTime date) {
//         this.setState(() {
//           _targetDateTime = date;
//           _currentMonth = DateFormat.yMMM().format(_targetDateTime);
//         });
//       },
//       onDayLongPressed: (DateTime date) {
//         print('long pressed date $date');
//       },
//     );
//
//     return new Scaffold(
//
//         appBar: TgmAppBarNotIndex(title: "날짜"),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 child: Column(
//                   children: [
//                     Container(
//                       child: new Row(
//                         children: <Widget>[
//                           GestureDetector(
//                             onTap:(){
//                               setState(() {
//                                 _targetDateTime = DateTime(
//                                     _targetDateTime.year, _targetDateTime.month - 1);
//                                 _currentMonth =
//                                     DateFormat.yMMM().format(_targetDateTime);
//                               });
//                             },
//                             child: Container(
//                               child: Icon(Icons.arrow_back_ios_rounded),
//                               color: Colors.transparent,
//                             ),
//                           ),
//
//                           Container(
//                               child: Text(
//                                 _currentMonth,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20.0,
//                                 ),
//                               ),
//
//                           ),
//
//                           GestureDetector(
//                             onTap:(){
//                               setState(() {
//                                 _targetDateTime = DateTime(
//                                     _targetDateTime.year, _targetDateTime.month + 1);
//                                 _currentMonth =
//                                     DateFormat.yMMM().format(_targetDateTime);
//                               });
//                             },
//                             child: Container(
//                               child: Icon(Icons.arrow_forward_ios_rounded ),
//                               color: Colors.transparent,
//                             ),
//                           ),
//
//
//                         ],
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       ),
//                       margin: EdgeInsets.only(
//                         top: 50.0,
//                         bottom: 26.0,
//                         left: 30.0,
//                         right: 30.0,
//                       ),
//                     ),
//
//                     Container(
//                       margin: EdgeInsets.symmetric(horizontal: 20.0),
//                       child: _calendarCarouselNoHeader,
//                     ),
//                   ],
//                 ),
//                 // color: Colors.tealAccent,
//               ),
//
//
//             ],
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           ),
//           physics: BouncingScrollPhysics(),
//         ),
//
//         floatingActionButton: Row(
//           children: [
//             Flexible(
//               child: Container(
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: BUTTON_LIGHT_GREEN_COLOR,
//                   ),
//                   onPressed: () {},
//                   child: const Text(
//                     '날짜입력',
//                     style: TextStyle(
//                         fontSize: 16
//                     ),
//                   ),
//                 ),
//                 margin: EdgeInsets.only(left: 32),
//                 width: double.infinity,
//                 height: 50,
//               ),
//               flex:1
//             )
//           ],
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//         ),
//
//     );
//
//   }
// }
