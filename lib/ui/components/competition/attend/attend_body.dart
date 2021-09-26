import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/competition/attend/list/attend_list.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';


// 대회 탭 >  목록
class AttendBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AttendList(),
          EmptyPlace(),
        ],
      ),
      physics: BouncingScrollPhysics(),
    );
  }
}
