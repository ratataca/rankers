import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class PlayAreaContentTitle extends StatefulWidget {
  String title = "";

  PlayAreaContentTitle({String title = ""}){
    this.title = title;
  }

  @override
  PlayAreaContentTitleState createState() => PlayAreaContentTitleState();
}

class PlayAreaContentTitleState extends State<PlayAreaContentTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            child: Text(
                this.widget.title,

                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: FONT_DARK_GRAY_COLOR,
                )
            ),

            // width: double.infinity,
            margin: EdgeInsets.only(left: 20, top: 18)
        ),


      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
    );
  }
}
