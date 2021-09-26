import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/unit/list_item/rank_num.dart';
import 'package:tennis_game_management/ui/components/rank/unit/list_item/rank_score_up_down.dart';
import 'package:tennis_game_management/ui/components/unit/couple/couple_img.dart';
import 'package:tennis_game_management/ui/components/unit/couple/couple_name.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/resources/colors.dart';

class CoupleListItem extends StatelessWidget {
  String rankNum="";
  String name="";
  String partner="";


  String score="";

  bool isUp = false;
  bool isMy = false;
  bool isOdd = false;

  CoupleListItem({String name="", String partner="K-뽀로로", String rankNum="", String score="129", isUp=false, isMy=false})
  {
    this.rankNum = rankNum;
    this.name = name;
    this.partner = partner;

    this.score = score;

    this.isUp = isUp;
    this.isMy = isMy;

    //TODO- 짝홀이 아닌 영역으로 색 지정 필요
    int tmp = int.parse(rankNum) % 2;
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
    return Column(
      children: [
        Container(
          child: Row(
              children: [
                // 1. 랭킹 순위
                RankNum(num: this.rankNum),
                
                // 2. 이미지와 이름
                Flexible(
                  child:  Container(
                    child: Row(
                      children: [
                        // TODO- 이미지 넘겨 받기
                        // CoupleImg(),
                        
                        CoupleName(name: this.name, partner: this.partner,),
                      ],
                    ),
                    padding: EdgeInsets.only(left: 16),
                  ),
                  flex: 1,
                ),
                
                // 3. 포인트와 업다운
                RankScoreUpDown(score: this.score, isUp: this.isUp),

              ]
          ),
          padding: EdgeInsets.only(left: 12, right: 16, top: 10, bottom: 10),
          // padding: EdgeInsets.only(left: 12, right: 16, top: 4, bottom: 4),
          color: isMy ? BACKGROUND_GREEN_COLOR : (this.isOdd ? SUB_BACKGROUND_LIGHT_GREEN_COLOR2 : null),
        ),

        HorizontalDivider(),
      ],
    );
  }
}
