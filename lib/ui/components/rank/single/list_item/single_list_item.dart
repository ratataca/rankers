import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/unit/list_item/my_img.dart';
import 'package:tennis_game_management/ui/components/rank/unit/list_item/my_name.dart';
import 'package:tennis_game_management/ui/components/rank/unit/list_item/rank_num.dart';
import 'package:tennis_game_management/ui/components/rank/unit/list_item/rank_score_up_down.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/resources/colors.dart';

class SingleListItem extends StatelessWidget {
  String name="";
  String rankNum="";

  String score="";

  bool isUp = false;
  bool isMy = false;
  bool isOdd = false;

  SingleListItem({String name="", String rankNum="", String score="", isUp=false, isMy=false})
  {
    this.name = name;
    this.rankNum = rankNum;
    this.score = score;

    this.isUp = isUp;
    this.isMy = isMy;
    print(">>>>>>>>>>>>>>>>>>>>>");
    print(this.isUp);

    //TODO- 짝홀이 아닌 영역으로 색 지정 필요
    int tmp = int.parse(rankNum) % 2; // 1: 홀수, 0 :  짝수
    if (tmp == 1){
      this.isOdd = true;
    } else{
      this.isOdd = false;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          child: Row(
            children: [

              // 1. 랭킹 순위
              RankNum(num: this.rankNum),

              // 2. 나의 이미지, 이름
              Flexible(
                child:  Container(
                  child: Row(
                    children: [

                      // MyImg(),

                      MyName(name: this.name),

                    ],
                  ),
                  padding: EdgeInsets.only(left: 16),
                ),
                flex: 1,
              ),

              // 3. 포인트 및 업다운
              RankScoreUpDown(score: this.score, isUp: this.isUp),
            ]
          ),
          // padding: EdgeInsets.only(left: 12, right: 16, top: 10, bottom: 10),
          padding: EdgeInsets.only(left: 12, right: 16, top: 4, bottom: 4),
          color: isMy ? BACKGROUND_GREEN_COLOR : (this.isOdd ? SUB_BACKGROUND_LIGHT_GREEN_COLOR2 : null),
        ),
        HorizontalDivider(),
      ],
    );
  }
}
