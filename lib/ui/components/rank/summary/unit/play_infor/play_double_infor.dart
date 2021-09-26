import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class PlayDoubleInfo extends StatelessWidget {

  String myName = "";
  String myTeamName = "";
  String oppName1 = "";
  String oppName2 = "";

  PlayDoubleInfo({String myName="", String myTeamName="", String oppName1="", String oppName2=""}){
    this.myName = myName;
    this.myTeamName = myTeamName;
    this.oppName1 = oppName1;
    this.oppName2 = oppName2;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          // 1. 나
          Container(
            child: Column(
              children: [
                // 1. 1. 나
                Container(
                  child: Text(
                    myName,
                    style: TextStyle(
                      fontSize: 13,
                      color: FONT_DARK_GREEN_COLOR,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 4),
                ),

                // 1. 1. 나의 팀원
                Container(
                  child: Text(
                    myTeamName,
                    style: TextStyle(
                      fontSize: 13,
                      color: FONT_DARK_GREEN_COLOR,
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  fontSize: 14
              ),
            ),
            width: 40,
            alignment: Alignment.center,
          ),

          // 1. 상대편
          Container(
            child: Column(
              children: [
                // 1. 1. 나
                Container(
                  child: Text(
                    oppName1,
                    style: TextStyle(
                      fontSize: 13,
                      color: FONT_DARK_GREEN_COLOR,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 4),
                ),

                // 1. 1. 나의 팀원
                Container(
                  child: Text(
                    oppName2,
                    style: TextStyle(
                      fontSize: 13,
                      color: FONT_DARK_GREEN_COLOR,
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            width: 80,
            alignment: Alignment.center,
          ),
        ],
      ),
      // padding: EdgeInsets.only(left: 8),

      height: 100,
    );
  }
}
