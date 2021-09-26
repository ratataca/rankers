//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/league/unit/input/add_input.dart';
//
// class MyDialog extends StatefulWidget {
//   final score1 = TextEditingController(text: "");
//   final score2 = TextEditingController(text: "");
//   final tieBreak1 = TextEditingController(text: "");
//   final tieBreak2 = TextEditingController(text: "");
//   int r =0;
//   int c =0;
//
//   MyDialog(r, c){
//     this.r=r;
//     this.c=c;
//   }
//
//   @override
//   _MyDialogState createState() => new _MyDialogState(r, c);
// }
//
// class _MyDialogState extends State<MyDialog> {
//
//   bool isError = false;
//
//   final score1 = TextEditingController(text: "");
//   final score2 = TextEditingController(text: "");
//   final tieBreak1 = TextEditingController(text: "");
//   final tieBreak2 = TextEditingController(text: "");
//
//   int r =0;
//   int c =0;
//
//   _MyDialogState(r, c){
//     this.r=r;
//     this.c=c;
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0)),
//
//       title: new Text(
//         "경기 결과 입력",
//         style: TextStyle(
//           // fontWeight: FontWeight.bold,
//             fontSize: 20
//         ),
//       ),
//
//       content: Container(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             AddInput("경기 결과", score1, score2),
//             AddInput("Tie Break", tieBreak1, tieBreak2),
//
//             isError? SizedBox(height: 20,) : Container(),
//             isError? Text("결과를 정확하게 기입해주세요", style: TextStyle(fontSize: 14, color: FONT_RED_COLOR),) : Container(),
//
//           ],
//         ),
//       ),
//       actions: <Widget>[
//         new TextButton(
//           child: new Text("취소", style: TextStyle(color: Colors.black),),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         TextButton(
//           child: new Text("확인"),
//           onPressed: () {
//             if(score1.text == "" || score2.text == "" || tieBreak1.text == "" || tieBreak2.text == ""){
//               setState(() {
//                 isError = true;
//               });
//             }
//             else{
//               setState(() {
//                 isError = false;
//                 updateAATableCell(r, c, score1.text, score2.text, tieBreak1.text, tieBreak2.text);
//                 Navigator.pop(context);
//               });
//             }
//           },
//         ),
//
//       ],
//     );
//   }
// }
//
