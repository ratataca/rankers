import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class PlayAreaContentTitleMore extends StatelessWidget {
  String title = "";

  PlayAreaContentTitleMore({String title = ""}){
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
                    fontWeight: FontWeight.bold
                )
            ),

            // width: double.infinity,
            margin: EdgeInsets.only(left: 20, top: 24)
        ),

        Container(
            child: GestureDetector(
              onTap: (){
                print("더보기 >");
              },
              child: Text(
                "더보기 >",

                style: TextStyle(
                  fontSize: 12,
                  color: FONT_GREEN_COLOR,
                  fontWeight: FontWeight.bold,
                ),
            ),

        ),
            // width: double.infinity,
            margin: EdgeInsets.only(right: 20, top: 24, bottom: 0)
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
    );
  }
}
