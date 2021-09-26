import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class TimeText extends StatelessWidget {
  String time="";
  TimeText({String time=""}){this.time=time;}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "시간 : "+this.time,
        style: TextStyle(
            color: FONT_DEFUALT_GRAY_COLOR,
            fontSize: 12
        ),
      ),

      // width: 50,
      alignment: Alignment.centerRight,
    );
  }

}


