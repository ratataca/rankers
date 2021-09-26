import 'package:flutter/material.dart';
import 'package:tennis_game_management/resources/colors.dart';


Widget CoupleUser(f, s, isLeft){

  return Container(
    child: Column(
      children: [
        Text(f.toString(), style: TextStyle(fontSize: 14),),
        SizedBox(height: 6,),
        Text(s.toString(), style: TextStyle(fontSize: 14),),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:isLeft? CrossAxisAlignment.start : CrossAxisAlignment.end,
    ),
    alignment: isLeft? Alignment.centerLeft : Alignment.centerRight,
    margin: isLeft? EdgeInsets.only(left: 16) : EdgeInsets.only(right: 16),
  );
}