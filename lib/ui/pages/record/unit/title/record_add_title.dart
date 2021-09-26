import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class RecordAddTitle extends StatelessWidget {
  String title = "";

  RecordAddTitle({String title = ""}){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.title+ " ",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      alignment: Alignment.centerRight,

      // color: Colors.blue,
      width: 80,
      height: 50,
    );
  }
}

