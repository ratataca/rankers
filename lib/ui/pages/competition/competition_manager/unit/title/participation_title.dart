import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class ParticipationTitle extends StatelessWidget {
  String title = "";

  ParticipationTitle({String title = ""}){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.title+ " ",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment.bottomRight,

      // color: Colors.blue,
      width: 80,
      height: 50,
    );
  }
}

