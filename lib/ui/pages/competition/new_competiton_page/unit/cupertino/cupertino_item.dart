import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class CupertinoItem extends StatelessWidget {
  String title = "";

  int itemIdx=-1;
  var RULES;
  int ruleSelected = 0;


  CupertinoItem(int itemIdx, var RULES, int ruleSelected){
    this.itemIdx=itemIdx;
    this.ruleSelected=ruleSelected;
    this.RULES=RULES;

    this.title=RULES[itemIdx];
  }

  // selectColor(){
  //   switch(ruleSelected){
  //     case 0:
  //       return;
  //
  //     case 1:
  //     default:
  //       return;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text(
        this.title,
        style: TextStyle(
          color: ruleSelected == itemIdx
              ? FONT_LIGHT_GREEN_COLOR
              : Colors.black,
        ),
      ),
      alignment: Alignment.center,
    );
  }
}

