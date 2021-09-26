import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/pages/record/unit/title/record_add_title.dart';


class ModeChoice extends StatefulWidget {
  bool isDouble=true;
  dynamic selectDouble;
  dynamic selectSingle;

  ModeChoice(bool isDouble, dynamic selectDouble, dynamic selectSingle){
    this.isDouble = isDouble;
    this.selectDouble = selectDouble;
    this.selectSingle = selectSingle;
  }

  @override
  State<StatefulWidget> createState() => ModeChoiceState(this.isDouble, this.selectDouble, this.selectSingle);

}

class ModeChoiceState extends State<ModeChoice>{
  bool isDouble=true;
  dynamic selectDouble;
  dynamic selectSingle;

  ModeChoiceState(bool isDouble, dynamic selectDouble, dynamic selectSingle){
    this.isDouble = isDouble;
    this.selectDouble = selectDouble;
    this.selectSingle = selectSingle;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RecordAddTitle(title: "방식", ),

        Flexible(
          child: Row(
            children:[
              GestureDetector(
                onTap: (){
                  setState(() {
                    this.selectDouble();
                    this.isDouble=true;
                  });
                },
                child: Container(
                  child: Text(
                    "복식",
                    style: TextStyle(
                      color: isDouble ? BUTTON_LIGHT_GREEN_COLOR : Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  width: 70,
                  height: 50,
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
                    this.selectSingle();
                    this.isDouble=false;
                  });

                },
                child: Container(
                  child: Text(
                    "단식",
                    style: TextStyle(
                      color: isDouble ? Colors.black : BUTTON_LIGHT_GREEN_COLOR,
                      fontSize: 16,
                    ),
                  ),
                  width: 70,
                  height: 50,
                  color: Colors.transparent,
                  alignment: Alignment.center,

                ),
              ),

            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          flex: 4,
        )
      ],
    );
  }
}

