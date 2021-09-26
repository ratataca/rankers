import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/unit/list_item/rank_score_up_down_slim.dart';
import 'package:tennis_game_management/resources/colors.dart';

class IndividualRankListItem extends StatelessWidget {
  String category="";
  String ranking="";
  String score="";

  bool isUp = false;
  bool isMy = false;
  bool isOdd = false;

  IndividualRankListItem({String category="", String name="", String ranking="", String score="", isUp=false, isMy=false})
  {
    this.category = category;
    this.ranking = ranking;
    this.score = score;


    //TODO- 짝홀이 아닌 영역으로 색 지정 필요
    int tmp = int.parse(ranking) % 2; // 1: 홀수, 0 :  짝수
    if (tmp == 1){
      this.isOdd = true;
      this.isUp = true;
    } else{
      this.isOdd = false;
      this.isUp = false;
    }

  }

  @override
  Widget build(BuildContext context) {

    // 승패 태그, vs, 경기결과(승패, 경기날짜)
    return Container(
      child: Row(
          children: [
            // 1. 게임 or 세트 타이틀
            Container(
              child: Text(
                this.category,

                style: TextStyle(
                  fontSize: 14,
                  color: FONT_DARK_GREEN_COLOR,
                ),
              ),
              width: 50,
              alignment: Alignment.centerRight,
            ),

            // 2. 등수
            Flexible(
              child: Row(
                children: [
                  Container(

                    child: Text(
                      this.ranking,

                      style: TextStyle(
                        fontSize: 16,
                        color: FREE_BOARD_LIGHT_GREEN_COLOR,
                      ),
                    ),
                    width: 110,
                    margin: EdgeInsets.only(left: 26),
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
              flex: 1,
            ),

            // TODO- isUp 매개변수 사용
            RankScoreUpDownSlim(score: this.score, ),

          ]
      ),
      padding: EdgeInsets.only(top: 4,bottom: 4,),
      color: this.isOdd ? SUB_BACKGROUND_LIGHT_GREEN_COLOR2 : null,
    );
  }
}