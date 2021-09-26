import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class ScheduleTitle extends StatelessWidget {
  String title = "";

  ScheduleTitle({String title = ""}){
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
      margin: EdgeInsets.only(top: 16, bottom: 8, left: 16),
    );
  }
}

