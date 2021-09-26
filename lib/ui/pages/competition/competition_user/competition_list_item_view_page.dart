// import "package:flutter/material.dart";
// import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_not_index.dart';
//
// import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
// import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
//
//
// import '../list_view/header_infor.dart';
// import 'unit/button/participate_button.dart';
//
// class CompetitionListItemViewPage extends StatefulWidget {
//   bool isOpener = false;
//   bool isParticipate = false;
//
//   CompetitionListItemViewPage(){
//     // 유저 아이디랑 주최자가 같다면?
//     this.isOpener = false;
//
//     // 내가 만약 참여자라면?
//     isParticipate = true;
//   }
//
//
//   @override
//   State<StatefulWidget> createState() => CompetitionListItemViewPageState(this.isOpener, this.isParticipate);
// }
//
// @override
// class CompetitionListItemViewPageState extends State<CompetitionListItemViewPage>{
//   bool isOpener = false;
//   bool isParticipate = false;
//
//   CompetitionListItemViewPageState(bool isOpener, bool isParticipate){
//     this.isOpener = true;
//     this.isParticipate = isParticipate;
//   }
//
//   Widget build(BuildContext context) {
//     var data = (ModalRoute.of(context)?.settings.arguments as dynamic);
//
//     return Container(
//         child: Scaffold(
//           appBar: TgmAppBarNotIndex(title: "대회목록"),
//
//           body: SafeArea(
//             child: Stack(
//               children: [
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: SingleChildScrollView(
//                     physics: BouncingScrollPhysics(),
//                     child: Container(
//                       child: Column(
//                         children: [
//                           HeaderInfor(data),
//
//                           HorizontalDivider(),
//                           // Todo- 참가자 리스트
//                           // BodyParticipation(data),
//
//
//
//                           EmptyPlace()
//
//                         ],
//                       ),
//                       padding: EdgeInsets.only(left: 16, right: 16),
//                     ),
//                   ),
//                 ),
//
//               ],
//             ),
//           ),
//           bottomNavigationBar: isOpener ?
//             ParticipateButton("대진표 작성")
//               : isParticipate ?
//                   ParticipateButton("참가취소")
//                     :
//                   ParticipateButton("참가신청"),
//         )
//     );
//   }
// }