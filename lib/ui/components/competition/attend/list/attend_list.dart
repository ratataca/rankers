import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import '../list_item/attend_list_item.dart';




class AttendList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      // Components
      child: Column(
        children: [

          AttendListItem(status:"신청완료"),
          HorizontalDivider(),

          AttendListItem(status:"참가중"),
          HorizontalDivider(),



        ],
      ),

      // Styling
      padding: EdgeInsets.only(left: 16, right: 16),
      width: double.infinity,
    );
  }
}