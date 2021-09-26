import 'package:flutter/material.dart';

Widget ScoreText(f, s){
  return Row(
    children: [
      Text(
        f.toString(),
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      Text(
        " : ",
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      Text(
        s.toString(),
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ],
    mainAxisAlignment: MainAxisAlignment.center,
  );
}