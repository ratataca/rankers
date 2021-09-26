import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/pages/competition/new_competiton_page/unit/title/new_competition_title.dart';

class AddInput extends StatelessWidget {
  String title = "";
  TextEditingController? controllerName = null;
  var inputWidth;
  bool isCenter=false;

  AddInput(String title, TextEditingController controllerName, var inputWidth, bool isCenter){
    this.title = title;
    this.controllerName = controllerName;
    this.inputWidth = inputWidth;
    this.isCenter = isCenter;
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        NewCompetitionTitle(title: this.title),
        Flexible(
          child: Container(
            child: TextField(
              decoration: const InputDecoration(
                isDense: true,                      // Added this
                contentPadding: EdgeInsets.all(4),
              ),
              textAlign: isCenter? TextAlign.center : TextAlign.left,
              style: TextStyle(
                fontSize: 15,
              ),
              autofocus: false,
              keyboardType: TextInputType.text,
              minLines: 1,
              maxLines: 1,
              controller: this.controllerName,
            ),
            // padding: EdgeInsets.symmetric(horizontal: 16),
            margin: EdgeInsets.only(right: 10, left: 10, bottom: 2),
            // height: 30,
            width: inputWidth,
          ),
          flex: 1,
        )
      ],
    );
  }
}

