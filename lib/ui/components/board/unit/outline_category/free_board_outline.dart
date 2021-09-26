import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class FreeBoardOutline extends StatelessWidget {
  String category = "";

  FreeBoardOutline(String category){
    this.category = category;
  }

  @override
  Widget build(BuildContext context) {

    // 승패 태그, vs, 경기결과(승패, 경기날짜)
    return Container(
      child: Container(
        child: Text(
          this.category,
          style: TextStyle(
            fontSize: 9,
            color: choiceoutlineColor(),
            fontWeight: FontWeight.bold,
          ),
        ),
        // color: Color.fromARGB(8, 220, 0, 0),
        padding: EdgeInsets.only(top: 2, right: 4, left: 4, bottom: 3),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: choiceoutlineColor(),
          width: 0.8,
        ),
      ),
      // padding: EdgeInsets.only(top: 1, bottom: 1, left: 4, right: 4),
      margin: EdgeInsets.only(top: 6),

    );
  }
  choiceoutlineColor(){
    switch (this.category){
    // 2. 참여 대회 body
      case "같이해요":
        return BACKGROUND_RED_COLOR;

    // 3. 추천 대회 body
      case "인사해요":
        return BACKGROUND_BLUE_COLOR;

    // 4. 경기 전적 body
      case "궁금해요":
        return FREE_BOARD_LIGHT_GREEN_COLOR;

      default:
        return BACKGROUND_RED_COLOR;

    }
  }
}
