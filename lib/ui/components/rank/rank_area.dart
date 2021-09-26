import "package:flutter/material.dart";

import 'package:tennis_game_management/ui/components/rank/couple/couple_ranking_body.dart';
import 'package:tennis_game_management/ui/components/rank/double/double_ranking_body.dart';
import 'package:tennis_game_management/ui/components/rank/summary/summary_body.dart';
import 'package:tennis_game_management/ui/components/rank/single/single_ranking_body.dart';
import 'package:tennis_game_management/ui/components/rank/unit/tab/tab_control_content.dart';

class RankArea extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RankAreaState();
}

class RankAreaState extends State<RankArea>{
  String selectedTitle = "복식";
  int pageIdx = 0;
  bool isOpeningBtnVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: [
            Column(
              children: [

                // 1. 랭킹 페이지 탭
                TabControlContent(
                    selectedTitle: this.selectedTitle,
                    onWhichTabClicked: onWhichTabClicked
                ),

                 // 2. 1,2,3등
                Flexible(
                  child: onTabChange(),
                  flex: 1,
                ),
              ],
            )
          ],
        )
    );
  }

  onWhichTabClicked(String selectedTitle){
    print("Warning | play_area.dart | onWhichTabClicked");
    setState((){ this.selectedTitle = selectedTitle; });

  }

  onTabChange(){
    setState(() { isOpeningBtnVisible = false; });
    switch (this.selectedTitle){

      case "복식":
        this.pageIdx = 1;
        return DoubleRankingBody();

      case "단식":
        this.pageIdx = 2;
        setState(() { isOpeningBtnVisible = true; });
        return SingleRankingBody();

      case "팀":
        this.pageIdx = 0;
        return CoupleRankingBody();

      case "내기록":
        this.pageIdx = 3;
        return SummaryBody();

      default:
        this.pageIdx = 0;
        return DoubleRankingBody();
    }
  }
}