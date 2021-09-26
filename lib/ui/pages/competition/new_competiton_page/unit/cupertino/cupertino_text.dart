import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class CupertinoText extends StatelessWidget {
  var f;

  CupertinoText(var f) {
    this.f = f;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Text(
              this.f,
              style: TextStyle(fontSize: 15),
            ),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 4),
            width: 90,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 20,
            color: FONT_DEFUALT_GRAY_COLOR,
          )
        ],
      ),
      // margin: EdgeInsets.only(top: 4),
      color: Colors.transparent,
    );
  }
}
