import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class RankNum extends StatelessWidget {
  String num="";

  RankNum({num=""}){this.num=num;}

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text(
        this.num,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: FONT_DARK_GREEN_COLOR,
        ),
      ),
      width: 54,
      alignment: Alignment.center,
      // color: Colors.green,
    );
  }
}


