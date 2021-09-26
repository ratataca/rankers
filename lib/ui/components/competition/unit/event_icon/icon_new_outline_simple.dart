import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class IconNewOutlineSimple extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // 승패 태그, vs, 경기결과(승패, 경기날짜)
    return Container(
      child: Container(
        child: Text(
          "N",
          style: TextStyle(
            fontSize: 8,
            color: FONT_NEW_COLOR,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Color.fromARGB(8, 220, 0, 0),
        padding: EdgeInsets.only(top: 1, right: 2, left: 3, bottom: 1),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: FONT_NEW_COLOR,
          width: 0.9,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      // padding: EdgeInsets.only(top: 1, bottom: 1, left: 4, right: 4),
      margin: EdgeInsets.only(top: 6),

    );
  }
}
