import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class InforTableRankItem extends StatelessWidget {
  String category="";
  String m_ranking="";
  String g_ranking="";

  bool m_isUp = false;
  bool g_isUp = false;


  InforTableRankItem({String category="", String m_ranking="", String g_ranking="", m_isUp=false, g_isUp=false})
  {
    this.category = category;

    this.m_ranking = m_ranking;
    this.g_ranking = g_ranking;

    this.m_isUp = m_isUp;
    this.g_isUp = g_isUp;
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
                        this.m_ranking,

                        style: TextStyle(
                          fontSize: 14,
                          color: FREE_BOARD_LIGHT_GREEN_COLOR,
                        ),
                      ),
                      // width: 110,
                      alignment: Alignment.center,
                      // color: Colors.blue,
                    ),

                    Container(
                      child: Text(
                        m_isUp ? "▲" : "▼",
                        style: TextStyle(
                          fontSize: 11,
                          color: m_isUp ? BACKGROUND_RED_COLOR : BACKGROUND_BLUE_COLOR,

                        ),
                      ),
                      margin: EdgeInsets.only(left: 8,),
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
                        this.g_ranking,

                        style: TextStyle(
                          fontSize: 14,
                          color: FREE_BOARD_LIGHT_GREEN_COLOR,
                        ),
                      ),
                      alignment: Alignment.centerRight,
                    ),

                    Container(
                      child: Text(
                        g_isUp ? "▲" : "▼",
                        style: TextStyle(
                          fontSize: 11,
                          color: g_isUp ? BACKGROUND_RED_COLOR : BACKGROUND_BLUE_COLOR,

                        ),
                      ),
                      margin: EdgeInsets.only(left: 8,),
                    ),

                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
                margin: EdgeInsets.only(right: 24),
              ),
              flex: 1,
            ),

            // // TODO- isUp 매개변수 사용
            // RankScoreUpDownSlim(score: this.score, ),

          ]
      ),
      height: 32,
      padding: EdgeInsets.only(top: 4,bottom: 4,),
      color: SUB_BACKGROUND_LIGHT_GREEN_COLOR2 ,
    );
  }
}