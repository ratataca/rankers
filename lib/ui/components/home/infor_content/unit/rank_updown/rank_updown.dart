import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class RankScore extends StatelessWidget {
  String score="";
  bool isUp = false;

  RankScore({String score="", bool isUp=false}){this.score=score; this.isUp=isUp;}

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:  Row(
        children: [

          Container(
            child: Text(
              this.score +" ",
              style: TextStyle(
                fontSize: 15,
                color: FREE_BOARD_LIGHT_GREEN_COLOR,
              ),
            ),
            margin: EdgeInsets.only(top: 4),
          ),

          Container(
            child: Text(
              isUp ? "▲" : "▼",
              style: TextStyle(
                fontSize: 12,
                color: isUp ? BACKGROUND_RED_COLOR : BACKGROUND_BLUE_COLOR,

              ),
            ),
            margin: EdgeInsets.only(left: 6, right: 0),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      // color: Colors.blue,
      // height: 30,
      // margin: EdgeInsets.only(right: 14),
    );
  }
}


