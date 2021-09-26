import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class BoardGoodIcon extends StatelessWidget {

  int goodCnt = 0;

  BoardGoodIcon({int goodCnt=0}){
    this.goodCnt=goodCnt;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Icon(
                Icons.favorite_border,
                color: Colors.redAccent,
                size: 14
            ),
          ),

          Container(
            child: Text(
              this.goodCnt.toString(),
              style: TextStyle(
                color: FONT_GRAY_COLOR,
                fontSize: 12
              ),
            ),
            padding: EdgeInsets.only(left: 2, right: 6),
          )
        ],
      ),
      // width: double.infinity,
      // height: 0.3,
      // margin: EdgeInsets.only(left: 4, right: 4),
      // color: Color.fromARGB(255, 200, 200, 200),
    );
  }
}


