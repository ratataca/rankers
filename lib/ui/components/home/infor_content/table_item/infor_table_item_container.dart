import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/home/infor_content/table_item/unit/infor_table_rank_item.dart';
import 'package:tennis_game_management/ui/components/home/infor_content/table_item/unit/infor_table_win_rate_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/resources/colors.dart';

class InforTableItem extends StatelessWidget{

  String title="";

  InforTableItem({String title=""}){
    this.title=title;
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 14,
                      color: FONT_DARK_GRAY_COLOR,
                    )
                ),
                width: 80,
                alignment: Alignment.center,
              ),

              Flexible(
                child: Container(
                  child: Column(
                    children: [
                      InforTableRankItem(category: "랭킹", m_ranking: "192", g_ranking: "203", m_isUp: true, g_isUp: false,),
                      HorizontalDivider(),
                      InforTableWinRateItem(category: "승률", match: "35.42%", game: "64.23%" ),
                      // RankingLineDivider(),
                    ],
                  ),
                ),
                flex: 7,
              ),
            ],
          ),
        ),
        HorizontalDivider(),
      ],
    );
  }
}