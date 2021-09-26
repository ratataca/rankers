import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:tennis_game_management/resources/colors.dart';


PreferredSizeWidget TgmAppBarBase(String title, BuildContext context ){

    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,

      title: Container(
        child: Text(title, style: new TextStyle(
          fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        )),
        margin: EdgeInsets.only(left: 4),
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        color: Colors.black,
        icon: Icon(Icons.arrow_back_ios),
      ),

      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }


String TgmAppBarTitle({int idx=0}){
  switch(idx){
    case 0:
      return "홈";
    case 1:
      return "대회";
    case 2:
      return "랭킹";
    case 3:
      return "기록";
    case 4:
      return "게시판";
    default:
      return "홈";
  }
}