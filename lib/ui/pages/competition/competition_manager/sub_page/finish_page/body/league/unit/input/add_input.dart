import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/league/unit/title/doing_title.dart';


class AddInput extends StatelessWidget {
  String title = "";
  TextEditingController? controllerName1 = null;
  TextEditingController? controllerName2 = null;

  var numberInputFormatters= [new FilteringTextInputFormatter.allow(RegExp("[0-9]")),];


  AddInput(String title, TextEditingController controllerName1, TextEditingController controllerName2,){
    this.title = title;
    this.controllerName1 = controllerName1;
    this.controllerName2 = controllerName2;

  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        DoingTitle(title: this.title),
        Flexible(
          child: Container(
            child: TextField(
              inputFormatters: numberInputFormatters,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              maxLines: 1,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 8),
                hintText: "0",
              ),

              style: TextStyle(
                  fontSize: 16
              ),
              controller: controllerName1,

            ),

            margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),

            width: 26,
            height: 30,

          ),
          flex: 1,
        ),

        Text(":"),

        Flexible(
          child: Container(
            child: TextField(
              inputFormatters: numberInputFormatters,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              maxLines: 1,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 8),
                hintText: "0",
              ),

              style: TextStyle(
                  fontSize: 16
              ),
              controller: controllerName2,

            ),

            margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),

            width: 26,
            height: 30,

          ),
          flex: 1,
        ),
      ],
    );
  }
}

