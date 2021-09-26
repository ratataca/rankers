import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/pages/competition/new_competiton_page/unit/title/new_competition_title.dart';


class TieBreakChoice extends StatefulWidget {
  bool isDouble=true;

  TieBreakChoice({bool isDouble = true}){
    this.isDouble = isDouble;
  }

  @override
  State<StatefulWidget> createState() => TieBreakChoiceState();

}

class TieBreakChoiceState extends State<TieBreakChoice>{
  bool isDouble=true;

  ModeChoiceState({bool isDouble = true}){
    this.isDouble = isDouble;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NewCompetitionTitle(title: "Tie Break", ),

        Flexible(
          child: Row(
            children:[
              GestureDetector(
                onTap: (){
                  setState(() {
                    this.isDouble = true;
                  });
                },
                child: Container(
                  child: Text(
                    "5 : 5",
                    style: TextStyle(
                      color: isDouble ? BUTTON_LIGHT_GREEN_COLOR : Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  width: 70,
                  height: 26,
                  alignment: Alignment.center,
                  color: Colors.transparent,

                ),
              ),

              Container(
                width: 1,
                height: 14,
                color: Colors.grey,
                margin: EdgeInsets.only(top: 1),
              ),

              GestureDetector(
                onTap: (){
                  setState(() {
                    this.isDouble = false;
                  });

                },
                child: Container(
                  child: Text(
                    "6 : 6",
                    style: TextStyle(
                      color: isDouble ? Colors.black : BUTTON_LIGHT_GREEN_COLOR,
                      fontSize: 16,
                    ),
                  ),
                  width: 70,
                  height: 26,
                  alignment: Alignment.center,
                  color: Colors.transparent,

                ),
              ),

            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          flex: 1,
        )
      ],
    );
  }
}

