import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/pages/competition/new_competiton_page/unit/title/new_competition_title.dart';


class AddInputEtc extends StatelessWidget {
  String title = "";
  TextEditingController? controllerName=null;


  AddInputEtc(String title, TextEditingController controllerName){
    this.title = title;
    this.controllerName = controllerName;

  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        children: [
          NewCompetitionTitle(title: this.title),
          // SizedBox(width: 8,),
          Flexible(
            child: Container(
              child: TextField(
                controller: this.controllerName,
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(8),
                ),
                style: TextStyle(
                    fontSize: 16
                ),

                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              // color: Colors.blue,
              margin: EdgeInsets.only(right: 10, left: 10, top: 6),
            ),
            flex: 1,
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      // color: Colors.orange,
    );
  }
}

