import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';

import 'list/free_board_list.dart';


class FreeBoardBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          FreeBoardList(),
          EmptyPlace(),
        ],
      ),
      physics: BouncingScrollPhysics(),
    );
  }
}
