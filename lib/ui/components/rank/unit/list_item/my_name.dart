import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class MyName extends StatelessWidget {
  String name="";

  MyName({String name=""}){this.name=name;}

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text(
        this.name,
        style: TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 14,
          color: FONT_DARK_GREEN_COLOR,
          // fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}


