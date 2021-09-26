import "package:flutter/material.dart";

class HeaderInforText extends StatelessWidget {

  String title="";
  double size = 14.0;
  bool isBold = false;

  HeaderInforText({String title="", double size=14.0, bool isBold=false}){
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
            // color: Colors.white
          ),
        ),
      margin: EdgeInsets.only(top: 3, bottom: 3),
    );
  }

}


