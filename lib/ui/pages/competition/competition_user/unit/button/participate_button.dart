import 'package:flutter/material.dart';
import 'package:tennis_game_management/resources/colors.dart';

class ParticipateButton extends StatefulWidget{
  String title="";


  ParticipateButton(String title){
    this.title=title;
    // this.fuc=fuc;
  }

  @override
  State<StatefulWidget> createState() => ParticipateButtonState(this.title);
}

class ParticipateButtonState extends State<ParticipateButton>{
  String title="a";
  ParticipateButtonState(String title){
    this.title=title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: this.title == "참가취소"?  FONT_DEFUALT_GRAY_COLOR : BUTTON_LIGHT_GREEN_COLOR,
        ),
        onPressed: () {
          switch(this.title){
            case "대진표 작성":{
              Navigator.pushNamed(context, '/competitionSchedule');
              break;
            }

            case "참가취소":{
              print("참가취소");

              break;
            }

            case "참가신청":{

              break;
            }
          }

        },
        child: Text(
          this.title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}