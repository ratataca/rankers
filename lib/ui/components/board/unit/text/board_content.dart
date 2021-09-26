import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class BoardContent extends StatelessWidget {
  String content ="";

  BoardContent({String content=""}){
    this.content=content;
}

  @override
  Widget build(BuildContext context) {
    return  Text(
        this.content,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 12,
          // fontWeight: FontWeight.bold,
          color: FONT_LIGHT_BLACK_COLOR,

        )
    );
  }

}


