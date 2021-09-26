import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/single/swipe/single_game_ranking_container.dart';
import 'package:tennis_game_management/ui/components/rank/single/swipe/single_set_ranking_container.dart';

class SingleRankingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(

      scrollDirection: Axis.horizontal,
      children: [
        SingleSetRankingContainer(),
        SingleGameRankingContainer()
      ],
      physics: BouncingScrollPhysics(),
    );
  }

}
