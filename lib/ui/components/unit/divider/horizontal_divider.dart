import "package:flutter/material.dart";

class HorizontalDivider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 0.3,
      margin: EdgeInsets.only(left: 4, right: 4),
      color: Color.fromARGB(255, 200, 200, 200),
    );
  }
}


