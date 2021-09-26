import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class ParticipanIcon extends StatelessWidget {
  String participan = "";

  ParticipanIcon({String participan = ""}){
    this.participan=participan;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.group_rounded,
          color: FONT_DARK_GRAY_COLOR,
          size: 18.0,
        ),

        Container(
          child: Text(
            this.participan,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 12,
                color: FONT_DEFUALT_GRAY_COLOR
            ),
          ),
          margin: EdgeInsets.only(left: 2),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

}


