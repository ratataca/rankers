import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class ListItemContent extends StatelessWidget {
  String period = "";
  String place = "";

  ListItemContent({String period = "", String place = ""}){
    this.period=period;
    this.place=place;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          child: Text(
            "기간 : " + period,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 12,
                color: FONT_DEFUALT_GRAY_COLOR

            ),
          ),
          margin: EdgeInsets.only(bottom: 2),
        ),

        Container(
          child: Text(
            "장소 : " + place,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 12,
                color: FONT_DEFUALT_GRAY_COLOR
            ),
          ),

        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

}


