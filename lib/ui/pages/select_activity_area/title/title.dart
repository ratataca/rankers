import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class SelectAreaTitle extends StatelessWidget {
  String title = "";

  SelectAreaTitle({String title = ""}){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            child: Text(
                this.title,

                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: FONT_DARK_GRAY_COLOR,
                )
            ),

            // width: double.infinity,
          margin: EdgeInsets.only(left: 30, top: 18, bottom: 10),
        ),

      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
    );
  }
}

