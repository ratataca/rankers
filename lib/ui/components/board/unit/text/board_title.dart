import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class BoardTitle extends StatelessWidget {
  String title = "";

  BoardTitle({String title = ""}){
    this.title=title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.title,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: FONT_DARK_GRAY_COLOR
        ),
      ),
    );
  }

}


