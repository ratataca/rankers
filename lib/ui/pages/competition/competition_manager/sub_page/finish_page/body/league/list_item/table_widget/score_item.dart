import 'package:flutter/material.dart';
import 'package:tennis_game_management/resources/colors.dart';

Widget ScoreItem(r, c, score, tieBreak, onTap){
  return GestureDetector(
    onTap: () => {
      r == c ?  null : onTap(r, c)
    },
    child: Container(
        child: Column(
          children: [
            Text(
              score,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              tieBreak,
              style: TextStyle(
                  fontSize: 13,
                  color: FONT_DEFUALT_GRAY_COLOR
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        width: 60,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: r == c ?  Color.fromARGB(40, 180, 186, 184) : Colors.transparent,
          border: Border.all(
            width: 0.2,
            color: FONT_DEFUALT_GRAY_COLOR,
          ),
        ),
    ),
  );
}