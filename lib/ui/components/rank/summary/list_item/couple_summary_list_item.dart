import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/resources/colors.dart';

class CoupleSummaryListItem extends StatelessWidget {
  String name="";
  String rankNum="";
  String score="";

  bool isUp = false;
  bool isOdd = false;

  CoupleSummaryListItem({String name="", String rankNum="", String score="", isUp=false, })
  {
    this.name = name;
    this.rankNum = rankNum;
    this.score = score;

    this.isUp = isUp;

    //TODO- 짝홀이 아닌 영역으로 색 지정 필요
    int tmp = int.parse(rankNum) % 2; // 1: 홀수, 0 :  짝수
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
                // 1. 대회명, 대회기간, 장소
                Container(
                  child: Text(
                    this.rankNum,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: FONT_DARK_GREEN_COLOR,
                    ),
                  ),
                  width: 54,
                  alignment: Alignment.center,
                  // color: Colors.green,
                ),

                Flexible(
                  child:  Container(
                    child: Row(
                      children: [

                        Container(
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            // TODO- 이미지 압축을 하여 정사각형으로 만들기
                            child:CircleAvatar( backgroundImage: AssetImage("assets/img/img_profile.jpg"), radius: 60.0, ),

                          ),
                          height: 40,
                          width: 70,
                          // color: Colors.blue,
                          padding: EdgeInsets.only(right: 16),
                        ),

                        Container(
                          child: Text(
                            this.name,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: FONT_DARK_GREEN_COLOR,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  flex: 1,
                ),

                Container(
                  child:  Row(
                    children: [


                      Text(
                        "129 pts",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: FONT_DARK_GREEN_COLOR,
                          // fontWeight: FontWeight.bold
                        ),
                      ),

                      Container(
                        child: Text(
                          isUp ? "▲" : "▼",
                          style: TextStyle(
                            fontSize: 12,
                            color: isUp ? BACKGROUND_RED_COLOR : BACKGROUND_BLUE_COLOR,

                          ),
                        ),
                        margin: EdgeInsets.all(10),
                      ),

                      // 2. 2. 1. 복식
                      // DoubleScore(),
                      //
                      // // 2. 2. 2. 단식
                      // SingleScore(),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  // color: Colors.blue,
                  height: 44,
                  // margin: EdgeInsets.only(right: 10),
                ),

              ]
          ),
          padding: EdgeInsets.only(left: 12, right: 16, top: 10, bottom: 10),
          // color: this.isOdd ? SUB_BACKGROUND_LIGHT_GREEN_COLOR2 : null,
        ),

        HorizontalDivider(),
      ],
    );
  }
}
