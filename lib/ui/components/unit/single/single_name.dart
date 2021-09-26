import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class SingleName extends StatelessWidget {
  String name="";

  SingleName({String name=""}){this.name=name;}

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text(
        this.name,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 14,
          color: FONT_DARK_GREEN_COLOR,
        ),
      ),
    );
  }
}


