import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/tournament/unit/input/add_input.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/tournament/unit/text/couple_user.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/tournament/unit/text/score_text.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/tournament/unit/text/tie_break_text.dart';

class TournamentListItem extends StatefulWidget{
  int idx=0;
  TournamentListItem({int idx=0,}){
    this.idx=idx;
  }

  @override
  State<StatefulWidget> createState() => TournamentListItemState(idx: this.idx);
}

class TournamentListItemState extends State<TournamentListItem>{
  int idx=0;
  int round=0;

  TournamentListItemState({int idx=0,}){
    this.idx=idx+1;
    this.round = (this.idx/2+0.5).toInt();
  }


  TextEditingController score1 = TextEditingController(text: "0");
  TextEditingController score2 = TextEditingController(text: "0");
  TextEditingController tieBreak1 = TextEditingController(text: "0");
  TextEditingController tieBreak2 = TextEditingController(text: "0");

  var numberInputFormatters= [new FilteringTextInputFormatter.allow(RegExp("[0-9]")),];

  void updateListItem(score1, score2, tieBreak1, tieBreak2){

    setState((){
      if(score1 == "") {score1 = "0";}
      if(score2 == "") {score2 = "0";}
      if(tieBreak1 == ""){tieBreak1 = "0";}
      if(tieBreak2 == ""){tieBreak2 = "0";}

      this.score1.text = score1;
      this.score2.text = score2;
      this.tieBreak1.text = tieBreak1;
      this.tieBreak2.text = tieBreak2;

    });


  }

  //region popup
  void showInsertScoreDialog() {

    score1.text="";
    score2.text="";
    tieBreak1.text="";
    tieBreak2.text="";

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),

            title: new Text(
              "경기 결과 입력",
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),

            content: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AddInput("경기 결과", score1, score2),
                  AddInput("Tie Break", tieBreak1, tieBreak2),

                  // isError? SizedBox(height: 20,) : Container(),
                  // isError? Text("결과를 정확하게 기입해주세요", style: TextStyle(fontSize: 14, color: FONT_RED_COLOR),) : Container(),

                ],
              ),
            ),
            actions: <Widget>[
              new TextButton(
                child: new Text("취소", style: TextStyle(color: Colors.black),),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: new Text("확인"),
                onPressed: () {
                  updateListItem(score1.text, score2.text, tieBreak1.text, tieBreak2.text);

                  Navigator.pop(context);
                },
              ),

            ],
          );
        });
  }
  //endregion

  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: (){
        showInsertScoreDialog();
      },
      child: Column(
        children: [
          Container(
            child: Row(
              children: [

                Container(
                  child: Text(this.idx.toString()),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 16),
                  width: 50,
                ),

                Flexible(
                  flex: 1,
                  child: CoupleUser("짜이바오이", "라효", true),
                ),

                Container(
                  child: Container(
                    child: Column(
                      children: [

                        ScoreText(score1.text, score2.text),

                        TieBreakText(tieBreak1.text, tieBreak2.text),
                        
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    alignment: Alignment.center,
                  ),
                  width: 100,
                ),

                Flexible(
                  flex: 1,
                  child: CoupleUser("금승준", "홍길동", false),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            color: Colors.transparent,
            height: 64,
          ),
          HorizontalDivider(),
        ],
      ),
    );
  }
}