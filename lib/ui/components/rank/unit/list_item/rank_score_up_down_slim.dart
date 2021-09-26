import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class RankScoreUpDownSlim extends StatelessWidget {
  String score="";
  bool isUp = false;

  RankScoreUpDownSlim({String score="", bool isUp=false}){this.score=score; this.isUp=isUp;}

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:  Row(
        children: [


          Text(
            this.score +" pts",
            style: TextStyle(
              fontSize: 14,
              color: FONT_DARK_GREEN_COLOR,
            ),
          ),

          Container(
            child: Text(
              isUp ? "▲" : "▼",
              style: TextStyle(
                fontSize: 12,
                color: isUp ? BACKGROUND_RED_COLOR : BACKGROUND_BLUE_COLOR,

              ),
            ),
            margin: EdgeInsets.only(left: 10, right: 10),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      // color: Colors.blue,
      height: 30,
      margin: EdgeInsets.only(right: 14),
    );
  }
}


