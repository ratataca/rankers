import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/competition/record/list_item/record_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';


class RecordList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      // Components
      child: Column(
        children: [
          // PlayListItem(title: "대회목록"),

          RecordListItem(status: "참여종료"),
          HorizontalDivider(),

          RecordListItem(status: "참여종료"),
          HorizontalDivider(),

          RecordListItem(status: "개최종료"),
          HorizontalDivider(),

          RecordListItem(status: "참여종료"),
          HorizontalDivider(),

          RecordListItem(status: "참여종료"),
          HorizontalDivider(),

          RecordListItem(status: "참여종료"),
          HorizontalDivider(),

          RecordListItem(status: "개최종료"),
          HorizontalDivider(),

          RecordListItem(status: "참여종료"),
          HorizontalDivider(),

        ],
      ),

      // Styling
      padding: EdgeInsets.only(left: 16, right: 16),
      width: double.infinity,

    );
  }
}