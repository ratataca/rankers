import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class RecordAddInput extends StatelessWidget {
  String title = "";

  RecordAddInput({String title = ""}){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: TextField(
          autofocus: true,
          // obscureText: true,
          style: TextStyle(
              fontSize: 14
          ),

          decoration: InputDecoration(
            // border: OutlineInputBorder(),
            // labelText: 'Hint',
          ),
        ),
        // color: Colors.pink,
        margin: EdgeInsets.only(right: 10, left: 10,),
        height: 30,

      ),
      flex: 4,
    );
  }
}

