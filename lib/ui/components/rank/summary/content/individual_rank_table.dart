import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/resources/colors.dart';

import 'individual_rank_table_item.dart';

class IndividualRankTable extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => IndividualRankTableState();
}

class IndividualRankTableState extends State<IndividualRankTable>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HorizontalDivider(),

          // 1. 복식
          IndividualRankTableItem(title: "복식"),

          // 2. 단식
          IndividualRankTableItem(title: "단식"),


        ],
      ),
      // color: BACKGROUND_WHITE_COLOR,
    );
  }
}