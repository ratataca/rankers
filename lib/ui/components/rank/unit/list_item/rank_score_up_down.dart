import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class RankScoreUpDown extends StatelessWidget {
  String score="";
  bool isUp = false;

  RankScoreUpDown({String score="", bool isUp=false}){this.score=score; this.isUp=isUp;}

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:  Row(
        children: [
          Text(this.score + " pts", style: TextStyle(fontSize: 14, color: FONT_DARK_GREEN_COLOR)),

          Container(
            child: Text(
              this.isUp ? "▲" : "▼",
              style: TextStyle(
                fontSize: 12,
                color: this.isUp ? BACKGROUND_RED_COLOR : BACKGROUND_BLUE_COLOR,
              ),
            ),
            margin: EdgeInsets.all(10),
          ),

        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      height: 44,
    );
  }
}


