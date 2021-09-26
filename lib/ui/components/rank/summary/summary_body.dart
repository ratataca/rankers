import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/unit/divider/content_divider.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/ui/components/unit/title/body_title.dart';
import 'content/individual_rank_table.dart';
import 'list/couple_summary_list.dart';

class SummaryBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SummaryBodyState();

}

class SummaryBodyState extends State<SummaryBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // 1. 요약 : 전체 플레이수, 이긴 경기 수, 진 경기 수
          // PlayCountTitle(allPlayCnt: "1023", winPlayCnt: "986", lowPlayCnt: "207",),
          // ContentDivider(),

          // 2. 요약 : 개인으로 책정된 등수와 포인트
          BodyTitle(title: "개인",),
          IndividualRankTable(),

          ContentDivider(),

          // 3. 요약: 나의 커플 랭킹 리스트
          Container(
            child: Column(
              children: [
                BodyTitle(title: "팀",),
                HorizontalDivider(),
                SingleChildScrollView(
                    child: CoupleSummaryList([1,2,3,4,5,5])
                ),
              ],
            ),
          ),
          EmptyPlace(),
        ],
      ),
      physics: BouncingScrollPhysics(),

    );
  }

}