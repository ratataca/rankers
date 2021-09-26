import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class PlaySingleInfo extends StatelessWidget {

  String myName = "";
  String oppName1 = "";

  PlaySingleInfo({String myName="", String oppName1=""}){
    this.myName = myName;
    this.oppName1 = oppName1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          // 1. 나
          Container(
            child: Text(
                myName,
              style: TextStyle(
                fontSize: 13,
                color: FONT_DARK_GREEN_COLOR,
              ),
            ),
            width: 80,
            alignment: Alignment.center,
          ),

          // 2. vs
          Container(
            child:Text(
              "vs",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            ),
            width: 40,
            alignment: Alignment.center,
          ),

          // 1. 상대편
          Container(
            child: Text(
              oppName1,
              style: TextStyle(
                fontSize: 13,
                color: FONT_DARK_GREEN_COLOR,
              ),
            ),
            width: 80,
            alignment: Alignment.center,
          )
        ],
      ),
      // padding: EdgeInsets.only(left: 8),

      height: 100,
    );
  }
}
