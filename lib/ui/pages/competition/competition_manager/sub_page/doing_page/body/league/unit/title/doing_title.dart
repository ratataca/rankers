import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class DoingTitle extends StatelessWidget {
  String title = "";

  DoingTitle({String title = ""}){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.title+ " ",
        style: TextStyle(
            fontSize: 16,
        ),
      ),
      alignment: Alignment.centerRight,

      // color: Colors.blue,
      width: 80,
      height: 50,
    );
  }
}

