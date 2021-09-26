import 'package:flutter/material.dart';
import 'package:tennis_game_management/resources/colors.dart';

Widget TieBreakText(f, s){
  return Row(
    children: [
      Text(
        f.toString(),
        style: TextStyle(
            fontSize: 12,
            color: FONT_DEFUALT_GRAY_COLOR
        ),
      ),
      Text(
        " : ",
        style: TextStyle(
            fontSize: 12,
            color: FONT_DEFUALT_GRAY_COLOR
        ),
      ),
      Text(
        s.toString(),
        style: TextStyle(
            fontSize: 12,
            color: FONT_DEFUALT_GRAY_COLOR
        ),
      ),
    ],
    mainAxisAlignment: MainAxisAlignment.center,
  );
}