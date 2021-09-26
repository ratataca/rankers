import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class UploadTimeText extends StatelessWidget {
  String time = "";
  UploadTimeText({String time=""}){ this.time = time;}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.time,
        style: TextStyle(
            color: FONT_GRAY_COLOR,
            fontSize: 10
        ),
      ),
    );
  }

}


