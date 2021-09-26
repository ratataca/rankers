import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
class NewCompetitionTitleDetail extends StatelessWidget {
  String title = "";
  bool isColumn=false;

  NewCompetitionTitleDetail({String title = "", bool isColumn = false}){
    this.title = title;
    this.isColumn = isColumn;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.title+ " ",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment.centerRight,

      // color: Colors.blue,
      width: 80,
      height: isColumn ? 50 : 40,
    );
  }
}

