import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class DoubleScore extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        // 타이틀
        Container(
          child: Text("복", style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          )),

          padding: EdgeInsets.only(left: 4, right: 4, top: 2, bottom: 4),
          margin: EdgeInsets.only(right: 8, top: 4, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: BACKGROUND_RED_COLOR,
            border: Border.all(
              color: Colors.transparent,
              width: 1,
            ),
          ),
        ),

        // 정보
        Container(
          child: Text("5000승"),
          width: 50,
          margin: EdgeInsets.only(right: 4),
          alignment: Alignment.centerRight,
        ),

        Container(
          child: Text("100패"),
          width: 50,
          alignment: Alignment.centerRight,
        ),
      ],
    );
  }
}