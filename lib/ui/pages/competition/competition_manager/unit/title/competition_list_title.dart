import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class CompetitionListTitle extends StatelessWidget {
  String title = "";

  CompetitionListTitle({String title = ""}){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Text(
            this.title,

            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )
        ),
        // color: Colors.red,
        padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8)

    );
  }
}

