import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/competition/full_list/list_item/full_list_item.dart';

import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';

import 'list/full_list.dart';


class FullListBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              FullList(),

              EmptyPlace(),

            ],
          ),
          padding: EdgeInsets.only(left: 16, right: 16),
        ),
        physics: BouncingScrollPhysics(),
      ),

    );
  }
}
