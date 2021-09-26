import 'package:flutter/material.dart';
import 'package:tennis_game_management/resources/colors.dart';

Widget ScoreHeader(String title){
  return Container(
      child: Text(title),

      decoration: BoxDecoration(
        color: BACKGROUND_LIGHT_BLUE_COLOR2,
        border: Border.all(
          width: 0.2,
          color: FONT_DEFUALT_GRAY_COLOR,
        ),
      ),
      width: 60,
      height: 60,
      alignment: Alignment.center,
  );
}