import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/league/list_item/table_widget/score_header.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/league/list_item/table_widget/score_item.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/league/list_item/table_widget/statistics_header.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/league/list_item/table_widget/statistics_item.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/league/unit/input/add_input.dart';


class LeagueDoingListItem extends StatefulWidget{
  int idx = 0;
  LeagueDoingListItem(int idx){
    this.idx = idx;
  }
  @override
  LeagueDoingListItemState createState() => LeagueDoingListItemState(this.idx);
}

class LeagueDoingListItemState extends State<LeagueDoingListItem>{
  int idx = 0;

  List<List<Widget>> tableData = <List<Widget>>[];

  var winOrLose = new Map();
  var scoreGap = new Map();
  var rank = new Map();

  int USER_NUMBER = 5; //원래 인원보다  +1
  bool isError = false;

  final score1 = TextEditingController(text: "");
  final score2 = TextEditingController(text: "");
  final tieBreak1 = TextEditingController(text: "");
  final tieBreak2 = TextEditingController(text: "");

  LeagueDoingListItemState(int idx){
    this.idx = idx + 1;
  }

  void updateRank(){
    Map sumScore = Map();
    for(int i = 1; i < USER_NUMBER; i++){
      var values = winOrLose[i];
      int sum = 0;
      for(int j = 1 ; j < USER_NUMBER ; j++){
        int value = values[j];
        sum += value;
      }

      sumScore[i] = sum;
    }

    // 승패 점수 정렬
    var sortedNumScore = sumScore.entries.toList()..sort((b, a) => a.value.compareTo(b.value));
    sumScore..clear()..addEntries(sortedNumScore);


    // for(int i = 0 ; i < sortedNumScore.length ; i++){
    //
    // }
    int currentRank = 0;
    int currentValue = 100000000000;

    for(int i = 0 ; i < sortedNumScore.length ; i++){
      if(currentValue > sortedNumScore[i].value){
        currentValue = sortedNumScore[i].value;
        currentRank++;
      }

      tableData[sortedNumScore[i].key][USER_NUMBER + 2] = StatisticsItem(currentRank.toString());
    }
  }


  void updateTableCell(r, c, score1, score2, tieBreak1, tieBreak2){
    setState(() {

      if(score1 == "") {score1 = "0";}
      if(score2 == "") {score2 = "0";}
      if(tieBreak1 == ""){tieBreak1 = "0";}
      if(tieBreak2 == ""){tieBreak2 = "0";}

      int frist_team = int.parse(score1);
      int second_team = int.parse(score2);

      if( frist_team > second_team){
        winOrLose[r][c] = 1;  // 승
        winOrLose[c][r]= -1; //  패
      }
      else if(frist_team < second_team){
        winOrLose[c][r]= 1;
        winOrLose[r][c] = -1;
      }

      scoreGap[r][c] = frist_team - second_team;
      scoreGap[c][r] = second_team - frist_team;

      // print("===========================");
      // print("승패");
      // print(winOrLose);
      // print("득실");
      // print(scoreGap);
      // print("순위");
      // print(rank);
      // print("===========================");
      // 승패 관련
      int winCnt1 = 0;
      int loseCnt1 = 0;

      int winCnt2 = 0;
      int loseCnt2 = 0;

      // 게임 득실 관련
      int myGap1 = 0;
      int myGap2 = 0;

      for(int i = 1; i < USER_NUMBER; i++){
        // 승패 관련
        if(winOrLose[r][i] == 1){
          winCnt1 +=1;
        }
        else if(winOrLose[r][i] == -1){
          loseCnt1 +=1;
        }

        if(winOrLose[c][i] == 1)      { winCnt2 += 1;  }
        else if(winOrLose[c][i] == -1){ loseCnt2 += 1; }

        // 게임 득실 관련
        myGap1 = scoreGap[r][i] + myGap1;
        myGap2 = scoreGap[c][i] + myGap2;
      }

      for(int i = 1; i < USER_NUMBER; i++){
        // 랭크 관련
        tableData[i][USER_NUMBER + 2] = StatisticsItem(rank[i].toString());
      }

      tableData[r][USER_NUMBER] = StatisticsItem(winCnt1.toString() + " / "+ loseCnt1.toString());
      tableData[c][USER_NUMBER] = StatisticsItem(winCnt2.toString() + " / "+ loseCnt2.toString());

      tableData[r][USER_NUMBER + 1] = StatisticsItem(myGap1.toString());
      tableData[c][USER_NUMBER + 1] = StatisticsItem(myGap2.toString());

      tableData[r][c] = ScoreItem(r, c, score1.toString() + " : " + score2.toString(), tieBreak1.toString() + " : " + tieBreak2.toString(), (r, c) => {
        showInsertScoreDialog(r, c)
      });


      tableData[c][r] = ScoreItem(r, c, score2.toString() + " : " + score1.toString(), tieBreak2.toString() + " : " + tieBreak1.toString(), (r, c) => {
        showInsertScoreDialog(c, r)
      });


      print("Before");
      print(winOrLose);
      updateRank();
    });

  }

  void showInsertScoreDialog(r, c) {

    score1.text="";
    score2.text="";
    tieBreak1.text="";
    tieBreak2.text="";

    isError = false;

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
                  updateTableCell(r, c, score1.text, score2.text, tieBreak1.text, tieBreak2.text);

                  print(winOrLose);
                  Navigator.pop(context);
                },
              ),

            ],
          );
        });
  }

  @override
  initState(){
    super.initState();

    initSection();
  }

  void initSection(){
    // List<Widget> header = <Widget>[];
    // header.add(ScoreHeader(""));
    // header.add(ScoreHeader("1"));
    // header.add(ScoreHeader("2"));
    // header.add(ScoreHeader("3"));
    // header.add(ScoreHeader("4"));
    // header.add(StatisticsHeader("h1"));
    // header.add(StatisticsHeader("h2"));
    // header.add(StatisticsHeader("h3"));

    // tableData.add(header);

    for(var i = 0 ; i < USER_NUMBER; i++){
      if(i!=0){
        winOrLose[i] = new Map();
        scoreGap[i] = new Map();
        rank[i] = 1;
      }

      List<Widget> myTable = <Widget>[];

      for(var j = 0 ; j < USER_NUMBER ; j++){


        if(j==0 && i==0){
          myTable.add(ScoreHeader(""));
        }

        else if(i==0 || j==0){
          if(i==0){myTable.add(ScoreHeader(j.toString() + "팀"));}
          else{myTable.add(ScoreHeader(i.toString() + "팀"));}
        }
        else{
          myTable.add(
              ScoreItem(i, j, "", "", (r, c)=>{showInsertScoreDialog(r, c)}));

          winOrLose[i][j] = 0;
          scoreGap[i][j] = 0;

        }

      }

      print("============================");
      print(winOrLose);
      print(scoreGap);
      print("============================");
      if(i==0){

        myTable.add(StatisticsHeader("승패"));
        myTable.add(StatisticsHeader("게임득실"));
        myTable.add(StatisticsHeader("순위"));
      }
      else{
        myTable.add(StatisticsItem("0 / 0"));
        myTable.add(StatisticsItem("0"));
        myTable.add(StatisticsItem("1"));
        // myTable.add(StatisticsItem(i, USER_NUMBER, "", (r, c) => {
        //   showInsertScoreDialog(r, c)
        // }));
        //
        // myTable.add(StatisticsItem(i, USER_NUMBER + 1, "", (r, c) => {
        //   showInsertScoreDialog(r, c)
        // }));
        //
        // myTable.add(StatisticsItem("", (r, c) => {
        //   showInsertScoreDialog(r, c)
        // }));
      }



      tableData.add(myTable);
    }



  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                child: Text( this.idx.toString() + "조 경기", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                margin: EdgeInsets.only(top: 32, left: 16, bottom: 8),
              ),

              for(var i = 0 ; i < tableData.length ; i++)
                Container(
                  child: Row(
                    children: [
                      for(var j = 0 ; j < tableData[i].length ; j++)
                        tableData[i][j]
                    ],
                  ),
                  margin: EdgeInsets.only(left: 16, right: 16),
                ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}


