import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/double/swipe/double_game_container.dart';
import 'package:tennis_game_management/ui/components/rank/double/swipe/double_set_container.dart';

class DoubleRankingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        DoubleSetContainer(),
        DoubleGameContainer(),
      ],
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
    );
  }
}
