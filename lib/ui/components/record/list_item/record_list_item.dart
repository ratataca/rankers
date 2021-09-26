import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';
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
  String playPlace = "";
  String playResult = "";
  String playTiebreak = "";

  RecordListItem({
    bool isSinglePlay=false,
    bool isCertification=false,
    bool isCompetition=false,

    String myName="",
    String partner="",
    String oppName1="",
    String oppName2="",
    String playTime="",
    String playPlace="",
    String playResult="",
    String playTiebreak=""
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
    this.playPlace = playPlace;
    this.playResult = playResult;
    this.playTiebreak = playTiebreak;

  }

  @override
  Widget build(BuildContext context) {

    // 승패 태그, vs, 경기결과(승패, 경기날짜)
    return Container(
      child: Column(
        children: [
          GestureDetector(

            onTap: () async {
              print("> GestureDetector | my_recent_play_list_item.dart ");
              // final result = await Navigator.pushNamed(context, '/playListItemView');
            },

            child: Container(
              child: Column(
                children: [
                  /////////////////////////////////////////////////////////////////////////
                  // 시간, 장소 정보 및 인증, 대회 정보
                  Container(
                    child: Row(
                      children: [

                        Container(
                          child: Column(
                            children: [
                              Container(child: Row(children: [
                                // Icon(
                                //   Icons.access_time,
                                //   color: FONT_DEFUALT_GRAY_COLOR,
                                //   size: 15.0,
                                // ),
                                TimeText(time: this.playTime),
                              ],), margin: EdgeInsets.only(bottom: 2),),

                              Container(child: Row(children: [
                                Container(
                                  child: Text("장소 : "+this.playPlace,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 12, color: FONT_DEFUALT_GRAY_COLOR,),),
                                  width: 200,
                                ),
                              ],),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),

                        Container(
                          child: Row(
                            children: [
                              isCertification ?
                              Container(
                                child: Container(
                                  child: Text(
                                    "인증",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: BACKGROUND_GREEN_329D9C,
                                    ),
                                  ),
                                  // color: Color(0x111FC58E),
                                  padding: EdgeInsets.only(top: 2, bottom: 4, left: 6, right: 6),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: BUTTON_GREEN_COLOR,
                                    width: 0.4,
                                  ),
                                ),

                                margin: EdgeInsets.only(right: 2, left: 2),
                              ) : Container(),
                              isCompetition ?
                              Container(
                                child: Container(
                                  child: Text(
                                    "대회",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: BACKGROUND_GREEN_329D9C,
                                    ),
                                  ),
                                  // color: Color(0x111FC58E),
                                  padding: EdgeInsets.only(top: 2, bottom: 4, left: 6, right: 6),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: BUTTON_GREEN_COLOR,
                                    width: 0.4,
                                  ),
                                ),

                                margin: EdgeInsets.only(right: 2, left: 2),
                              ) :
                              Container(),

                              // isCertification ? Container(child: RecordOutline("인증"), margin: EdgeInsets.only(right: 2, left: 2),) : Container(),
                              // isCompetition ? Container(child: RecordOutline("대회"), margin: EdgeInsets.only(right: 2, left: 2),) : Container(),
                            ],
                          ),
                          margin: EdgeInsets.only(bottom: 12),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    ),
                    color: Colors.transparent,
                    margin : EdgeInsets.only(bottom: 8, top: 8),
                  ),

//////////////////////////////////////////////////////////////////////////////////////


                  Container(
                    child: Row(
                      children: [
                        // 1. 자신 & 파트너 nickname
                        Container(
                          child: Column(
                            children: [
                              isSinglePlay?
                              SingleName(name: this.myName,)
                                  :
                              CoupleName(name: this.myName, partner: this.partner,)
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          // color: Colors.red,
                          width: 100,
                        ),


                        // 2. play result, play tie break
                        Container(
                          child: Column(
                            children: [
                              Text(playResult, style: TextStyle(fontSize: 16),),
                              Text(playTiebreak, style: TextStyle(fontSize: 12),),
                            ],
                          ),
                          // color: Colors.green,
                          margin: EdgeInsets.only(top: 4),

                        ),



                        // 3. op1 & op2 nickname
                        Container(
                          child: Column(
                            children: [
                              isSinglePlay?
                              SingleName(name: this.oppName1,)
                                  :
                              CoupleName(name: this.oppName1, partner: this.oppName2,)
                            ],
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                          ),
                          // color: Colors.pink,
                          width: 100,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    color: Colors.transparent,

                    // height: 50,
                  ),



                ],
              ),
              padding: EdgeInsets.only(bottom: 6, top: 4, right: 24, left: 24),
            ),


          ),
          HorizontalDivider()
        ],
      ),
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