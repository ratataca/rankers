import 'package:flutter/material.dart';
import 'package:tennis_game_management/resources/colors.dart';

Widget StatisticsHeader(String title){
  return Container(
    child: Text(title),
    decoration: BoxDecoration(
      color: BACKGROUND_LIGHT_RED_COLOR2,
      border: Border.all(
        width: 0.2,
        color: FONT_DEFUALT_GRAY_COLOR,
      ),
    ),
    width: 80,
    height: 60,
    alignment: Alignment.center,
  );
}