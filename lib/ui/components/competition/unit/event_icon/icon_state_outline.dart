import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class IconStateOutline extends StatelessWidget {
  String title = "";
  IconStateOutline({String title=""}){this.title=title;}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Text(
          this.title,

          style: TextStyle(
            fontSize: 9,
            color: StatusTitle(),
            fontWeight: FontWeight.bold,
          ),
        ),

        width: 44,
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 3, bottom: 2),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: StatusTitle(),
            width: 0.8,
          ),
        ),
        margin: EdgeInsets.only(top: 6),
    );
  }

  StatusTitle(){
    switch(this.title){
      // ===========참여 목록=================
      case "신청완료":
        // return BACKGROUND_RED_COLOR;
        return BLUE_OUTLINE;

      case "참가중":
        return FONT_RED_COLOR;

      case "종료":
        // return BACKGROUND_LIGHT_GREEN_COLOR;
        return GRAY_OUTLINE;

      // ===========대회 목록=================
      case "공고중":
        return FREE_BOARD_LIGHT_GREEN_COLOR;

      case "신청중":
        return BACKGROUND_BLUE_COLOR;

      case "신청종료":
        // return BACKGROUND_BLUE_COLOR;
        return BLUE_OUTLINE;

      case "진행중":
        return FONT_RED_COLOR;

    // ===========기록 목록=================
      case "참여종료":
        return GRAY_OUTLINE;

      case "개최종료":
        return BLUE_OUTLINE;

      case "참여":
        return GRAY_OUTLINE;

      case "개최":
        return BLUE_OUTLINE;

      default:
        return "";
    }
  }

}
