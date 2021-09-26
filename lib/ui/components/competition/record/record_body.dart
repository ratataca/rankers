import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/competition/record/list/record_list.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';

class RecordBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      // Components
      child: SingleChildScrollView(
        child: Column(
          children: [

            RecordList(),

            EmptyPlace(),

          ],
        ),
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
