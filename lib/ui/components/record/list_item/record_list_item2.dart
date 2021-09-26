import 'dart:ui';
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/record/unit/outline_category/record_outline.dart';
import 'package:tennis_game_management/ui/components/unit/couple/couple_name.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/single/single_name.dart';
import 'package:tennis_game_management/ui/components/unit/text/time_text.dart';

class RecordListItem extends StatelessWidget {
  bool isSinglePlay = false;
  bool isCertification = false;
  bool isCompetition = false;

  String myName = "";

  String partner = "";
  String oppName1 = "";
  String oppName2 = "";

  String playTime = "";
  String playResult = "";

  RecordListItem({
    bool isSinglePlay=false,
    bool isCertification=false,
    bool isCompetition=false,

    String myName="",
    String partner="",
    String oppName1="",
    String oppName2="",
    String playTime="",
    String playResult=""
  })
  {
    this.isSinglePlay = isSinglePlay;
    this.isCertification = isCertification;
    this.isCompetition = isCompetition;

    this.myName = myName;
    this.partner = partner;
    this.oppName1 = oppName1;
    this.oppName2 = oppName2;

    this.playTime = playTime;
    this.playResult = playResult;
  }

  @override
  Widget build(BuildContext context) {

    // 승패 태그, vs, 경기결과(승패, 경기날짜)
    return Column(
      children: [
        GestureDetector(

          onTap: () async {
            print("> GestureDetector | my_recent_play_list_item.dart ");
            // final result = await Navigator.pushNamed(context, '/playListItemView');
          },

          child: Container(
            child: Row(
              children: [
                // 1. 이긴팀 영억
                Flexible(
                  child: Container(
                    child: Row(
                      children: [


                        // 1. 2. 이름
                        Column(
                          children: [
                            isSinglePlay?
                            SingleName(name: this.myName,)
                                :
                            CoupleName(name: this.myName, partner: this.partner,)
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),


                        // 1. 3. 점수
                        Container(
                          child: Text(
                            this.playResult[0],
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                        ),

                        // 2. VS 세모 영억
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    height: double.infinity,
                    padding: EdgeInsets.only(left: 26, right: 10),
                  ),
                  flex: 1,
                ),

                Container(
                  child: Text(
                    ":",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                // 3. 진팀 영억
                Flexible(
                  child: Container(
                    child: Row(
                      children: [


                        // 1. 3. 점수
                        Container(
                          child: Text(
                            this.playResult[2],
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                        ),


                        // 1. 2. 이름
                        Container(
                          child: Column(
                            children: [
                              isSinglePlay?
                              SingleName(name: this.oppName1,)
                                  :
                              CoupleName(name: this.oppName1, partner: this.oppName2,)
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          // color: Colors.pink,
                          width: 80,
                        ),

                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    height: double.infinity,
                    padding: EdgeInsets.only(left: 10),
                    color: Colors.orange ,
                  ),
                  flex: 1,
                ),

                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          isCertification ? Container(child: RecordOutline("인증"), margin: EdgeInsets.only(right: 2, left: 2),) : Container(),
                          isCompetition ? Container(child: RecordOutline("대회"), margin: EdgeInsets.only(right: 2, left: 2),) : Container(),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      Container(child: TimeText(time: this.playTime), width: 60,),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                  ),
                  width: 64,
                  // color: Colors.tealAccent,
                  margin: EdgeInsets.only(top: 12, bottom: 12, right: 24),
                )

              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            color: Colors.yellow,
            height: 80,
          ),


        ),
        HorizontalDivider()
      ],
    );
  }
}

// TODO- popup 함수
// void FShowPlayInfo() {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//
//       // 자동 종료
//       return AlertDialog(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8.0)
//         ),
//         content: SizedBox(
//             height: 300,
//             width: 300,
//             child:
//             Text("ggool")
//         ),
//       );
//     },
//   );
// }


// TODO- delay 함수

// void FShowDelay() {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       // 자동 종료
//       Future.delayed(Duration(seconds: 3), () {
//         Navigator.pop(context);
//       });
//
//       return AlertDialog(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8.0)
//         ),
//         content: SizedBox(
//           height: 200,
//           child: Center(
//               child:SizedBox(
//                 child: new CircularProgressIndicator(
//                     valueColor: new AlwaysStoppedAnimation(BACKGROUND_LIGHT_GREEN_COLOR),
//                     strokeWidth: 5.0
//                 ),
//                 height: 50.0,
//                 width: 50.0,
//               )
//           ),
//         ),
//       );
//     },
//   );
// }