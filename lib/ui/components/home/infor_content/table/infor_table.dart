import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/home/infor_content/horizontal_list/info_horizontal_list.dart';


class InforTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoHorizontalList(),
      ],

    );
  }

}


