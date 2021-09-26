import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class InforTableWinRateItem extends StatelessWidget {
  String category="";
  String match="";
  String game="";

  InforTableWinRateItem({String category="", String match="", String game=""})
  {
    this.category = category;
    this.match = match;
    this.game = game;
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

            // 2. 매치 데이터
            Flexible(
              child: Container(
                child: Row(
                  children: [
                    Container(

                      child: Text(
                        this.match,

                        style: TextStyle(
                          fontSize: 13,
                          color: FONT_DARK_GREEN_COLOR,
                        ),
                      ),
                      // width: 110,
                      alignment: Alignment.center,
                      // color: Colors.blue,
                    ),

                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
                margin: EdgeInsets.only(right: 10),
              ),
              flex: 1,
            ),

            // 2. 게임 데이터
            Flexible(
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        this.game,

                        style: TextStyle(
                          fontSize: 13,
                          color: FONT_DARK_GREEN_COLOR,
                        ),
                      ),
                      alignment: Alignment.centerRight,
                    ),

                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
                margin: EdgeInsets.only(right: 24),
              ),
              flex: 1,
            ),

          ]
      ),
      height: 32,
      padding: EdgeInsets.only(top: 4,bottom: 4,),
    );
  }
}