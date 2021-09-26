import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class IconNewOutline extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // 승패 태그, vs, 경기결과(승패, 경기날짜)
    return Container(
      child: Container(
        child: Text(
          "NEW",
          style: TextStyle(
            fontSize: 9,
            color: FONT_RED_COLOR,
            fontWeight: FontWeight.bold,
          ),
        ),
        // color: Color.fromARGB(8, 220, 0, 0),
        width: 32,
        alignment: Alignment.center,
        padding: EdgeInsets.only(
            top: 2,
            // right: 4, left: 4,
            bottom: 1
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          // color: FONT_NEW_COLOR,
          color: FONT_RED_COLOR,
          width: 0.8,
        ),
      ),
      // padding: EdgeInsets.only(top: 1, bottom: 1, left: 4, right: 4),
      margin: EdgeInsets.only(top: 6),

    );
  }
}
