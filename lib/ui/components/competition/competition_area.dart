import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/competition/attend/attend_body.dart';
import 'package:tennis_game_management/ui/components/competition/record/record_body.dart';
import 'package:tennis_game_management/ui/components/competition/full_list/full_list_body.dart';
import 'package:tennis_game_management/ui/components/competition/unit/tab/tab_control_content.dart';
import 'package:tennis_game_management/resources/colors.dart';

import 'held/held_body.dart';

class CompetitionArea extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => CompetitionAreaState();
}

class CompetitionAreaState extends State<CompetitionArea>{
  String selectedTitle = "전체";
  int pageIdx = 0;
  bool isOpeningBtnVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              TabControlContent(
                  selectedTitle: this.selectedTitle,
                  onWhichTabClicked: onWhichTabClicked
              ),

              Flexible(
                child: onTabChange(),
                flex: 1
              ),
            ],
          ),
        ],
      )
    );
  }

  onWhichTabClicked(String selectedTitle){
    setState((){ this.selectedTitle = selectedTitle; });
  }

  onTabChange(){
    setState(() { isOpeningBtnVisible = false; });
    switch (this.selectedTitle){

      case "전체":
        this.pageIdx = 0;
        return FullListBody();

      case "참여중":
        this.pageIdx = 1;
        return AttendBody();

      case "개최중":
        this.pageIdx = 2;
        setState(() { isOpeningBtnVisible = true; });
        return HeldBody();

      case "기록":
        this.pageIdx = 3;
        return RecordBody();


      default:
        this.pageIdx = 0;
        return AttendBody();

    }
  }
}