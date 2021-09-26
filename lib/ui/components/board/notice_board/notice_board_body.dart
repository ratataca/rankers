import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/board/notice_board/list/notice_board_list.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';


class NoticeBoardBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: [
            NoticeBoardList(),
            EmptyPlace(),
      ],
    ),
    physics: BouncingScrollPhysics(),
    );
  }
}
