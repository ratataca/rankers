import "package:flutter/material.dart";

class ParticipationIcon extends StatelessWidget {

  String title="";

  double size = 14.0;
  bool isBold = false;

  ParticipationIcon({String title="", double size=14.0, bool isBold=false}){
    this.title = title;
    this.size = size;
    this.isBold = isBold;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          this.title,
          style: TextStyle(
            fontSize: this.size,
            fontWeight: this.isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      margin: EdgeInsets.only( bottom: 8),
    );
  }

}


