// import "package:flutter/material.dart";
// import 'package:tennis_game_management/components/unit/appbar/tgm_app_bar_not_index.dart';
// import 'package:tennis_game_management/components/unit/divider/content_divider.dart';
// import 'package:flutter/cupertino.dart';
//
// enum Play { double, single }
//
// class RecordAddPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => RecordAddPageState();
// }
// @override
//
// class RecordAddPageState extends State<RecordAddPage>{
//   Play? _play = Play.double;
//   DateTime? _chosenDateTime;
//
//   void _showDatePicker(ctx) {
//     // showCupertinoModalPopup is a built-in function of the cupertino library
//     showCupertinoModalPopup(
//         context: ctx,
//         builder: (_) => Container(
//           height: 500,
//           color: Color.fromARGB(255, 255, 255, 255),
//           child: Column(
//             children: [
//               Container(
//                 height: 400,
//                 child: CupertinoDatePicker(
//                     initialDateTime: DateTime.now(),
//                     mode: CupertinoDatePickerMode.date,
//                     // use24hFormat: true,
//                     onDateTimeChanged: (val) {
//                       setState(() {
//                         _chosenDateTime = val;
//                       });
//                     }),
//               ),
//
//               // Close the modal
//               CupertinoButton(
//                 child: Text('OK'),
//                 onPressed: () => Navigator.of(ctx).pop(),
//               )
//             ],
//           ),
//         ));
//   }
//
//   Widget build(BuildContext context) {
//     return Container(
//         child: Scaffold(
//           appBar: TgmAppBarNotIndex(title: "경기기록"),
//           body: SafeArea(
//             child: Container(
//               child: Column(
//                 children: [
//
//                   Row(
//                     children: [
//                       Container(
//                         child: RadioListTile(
//                           title: const Text('복식'),
//
//                           value: Play.double,
//                           groupValue: _play,
//                           autofocus: true,
//                           activeColor: Colors.green,
//                           onChanged: (Play? value) {
//                             setState(() {
//                               _play = value;
//                               print(_play);
//                             });
//                           }
//                           ),
//                         width: 140,
//                       ),
//
//                       Container(
//                         child: RadioListTile(
//                             title: const Text('단식'),
//
//                             value: Play.single,
//                             groupValue: _play,
//                             activeColor: Colors.green,
//                             onChanged: (Play? value) {
//                               setState(() {
//                                 _play = value;
//                                 print(_play);
//                               });
//                             }
//                         ),
//                         width: 140,
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Flexible(
//                           child: Container(
//                               // child: Text("날짜")
//                             color: Colors.blue,
//                             height: 50,
//                           ),
//                         flex: 1,
//                       ),
//
//                       Flexible(
//                         child: Container(
//                           child: Container(
//                             child: CupertinoButton(
//                               padding: EdgeInsetsDirectional.zero,
//                               child: Text('Show Picker'),
//                               onPressed: () => _showDatePicker(context),
//                             ),
//                           ),
//                           color: Colors.greenAccent,
//                           height: 50,
//                         ),
//                         flex: 2,
//                       ),
//                     ],
//                   )
//
//                 ],
//               ),
//               padding: EdgeInsets.only(top: 20, right: 24, left: 24, bottom: 20),
//             ),
//           ),
//         )
//     );
//   }
// }