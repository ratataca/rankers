import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class CoupleName extends StatelessWidget {
  String name = "";
  String partner = "";

  CoupleName({String name="", String partner=""}){this.name=name; this.partner=partner;}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.name,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13,
            color: FONT_DARK_GREEN_COLOR,
          ),
        ),

        SizedBox(
          height: 4,
        ),


        Text(
          this.partner,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13,
            color: FONT_DARK_GREEN_COLOR,
          ),
        ),

      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

}


