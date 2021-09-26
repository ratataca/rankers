import 'package:flutter/material.dart';
import 'package:tennis_game_management/resources/colors.dart';

Widget StatisticsItem(score){
  return Container(
      child: Text(score),
        width: 80,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.2,
            color: FONT_DEFUALT_GRAY_COLOR,
          ),
        ),
  );
}