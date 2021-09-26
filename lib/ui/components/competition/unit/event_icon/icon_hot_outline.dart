import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class IconHotOutline extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // 승패 태그, vs, 경기결과(승패, 경기날짜)
    return Container(
      child: Container(
        child: Text(
          "HOT",
          style: TextStyle(
            fontSize: 9,
            color: FONT_NEW_COLOR,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: FONT_NEW_COLOR,
          width: 0.8,
        ),
      ),
      padding: EdgeInsets.only(top: 1, bottom: 1, left: 4, right: 4),
      margin: EdgeInsets.only(top: 6),

    );
  }
}
