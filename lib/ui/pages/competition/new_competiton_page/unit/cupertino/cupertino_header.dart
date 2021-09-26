import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class CupertinoHeader extends StatelessWidget {
  int ruleSelected=-1;

  CupertinoHeader(int ruleSelected){
    this.ruleSelected = ruleSelected;
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children:[
          CupertinoButton(
            child: Text('취소', style: TextStyle(color: Colors.grey),),
            onPressed: () {Navigator.pop(context);},
            padding:const EdgeInsets.symmetric(horizontal: 16.0,vertical: 5.0,),
          ),

          CupertinoButton(
            child: Text('확인',style: TextStyle(color:FREE_BOARD_LIGHT_GREEN_COLOR),),
            onPressed: () {Navigator.pop(context, ruleSelected);},
            padding:const EdgeInsets.symmetric(horizontal: 16.0,vertical: 5.0,),
          )
        ],
      ),

      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border(
          bottom: BorderSide(
            color: Color(0xff999999),
            width: 0.0,
          ),
        ),
      ),
    );
  }
}

