import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class BoardGoodIconButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Icon(
                Icons.favorite_border,
                color: FONT_DEFUALT_GRAY_COLOR,
                size: 16
            ),
          ),
          Container(
            child: Text(
                "공감하기",
              style: TextStyle(
                color: FONT_DEFUALT_GRAY_COLOR,
                fontSize: 12
              ),
            ),
            padding: EdgeInsets.only(bottom: 3, right: 3, left: 3),

          )

        ],
      ),
      padding: EdgeInsets.only(left: 6, right: 6, top: 4, bottom: 4),

      // color: Colors.greenAccent,
      // width: double.infinity,
      // height: 0.3,
      // margin: EdgeInsets.only(left: 4, right: 4),
      // color: Color.fromARGB(255, 200, 200, 200),
    );
  }
}


