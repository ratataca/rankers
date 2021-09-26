import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/competition/full_list/list_item/full_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';


class FullList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      // Components
      child: Column(
        children: [

          FullListItem(),
          HorizontalDivider(),

          FullListItem(),
          HorizontalDivider(),

          FullListItem(),
          HorizontalDivider(),

          FullListItem(),
          HorizontalDivider(),

          FullListItem(),
          HorizontalDivider(),

          FullListItem(),
          HorizontalDivider(),

          FullListItem(),
          HorizontalDivider(),

          FullListItem(),
          HorizontalDivider(),
        ],
      ),
    );
  }
}