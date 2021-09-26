import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class SingleImg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: new EdgeInsets.only(right: 16),
      // color: Colors.pink,
      child:  ClipRRect(
        borderRadius: new BorderRadius.circular(50.0),
        // TODO- 이미지 압축을 하여 정사각형으로 만들기
        child:CircleAvatar( backgroundImage: AssetImage("assets/img/my_img.jpg"), radius: 60.0, ),

      ),
      height: 40,
      width: 40,
    );
  }
}


