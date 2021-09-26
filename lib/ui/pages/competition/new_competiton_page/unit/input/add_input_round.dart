import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/pages/competition/new_competiton_page/unit/title/new_competition_title.dart';

class AddInputRound extends StatefulWidget{
  TextEditingController? controllerName = null;
  var dict;
  dynamic gound;

  AddInputRound(TextEditingController controllerName, var dict, dynamic gound){
    this.controllerName = controllerName;
    this.dict = dict;
    this.gound = gound;
    print(dict[gound]);
  }

  @override
  State<StatefulWidget> createState() => AddInputRoundState(this.controllerName, this.dict, this.gound);
}

class AddInputRoundState extends State<AddInputRound>{
  TextEditingController? controllerName = null;
  var dict;
  dynamic gound;

  AddInputRoundState(TextEditingController? controllerName, var dict, dynamic gound){
    this.controllerName = controllerName;
    this.dict = dict;

    this.gound = gound;
  }




  @override
  Widget build(BuildContext context) {
    return dict[gound] == "리그" ?
        Row(
          children: [
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(4),
                ),
                textAlign:TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
                autofocus: false,
                keyboardType: TextInputType.text,
                minLines: 1,
                maxLines: 1,
                controller: this.controllerName,
              ),
              width: 60,
            ),
            Container(
              child: Text(" 명이 조"),
            )
          ],
        )
      :
        dict[gound] == "토너먼트" ?
        Row(
          children: [
            Container(
              child: TextField(
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(4),
                ),
                textAlign:TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
                autofocus: false,
                keyboardType: TextInputType.text,
                minLines: 1,
                maxLines: 1,
                controller: this.controllerName,
              ),
              width: 60,
            ),
            Container(
              child: Text(" Draw"),
            )
          ],
        )
        :
        Container();

  }
}

