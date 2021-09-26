import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/home/infor_content/table/infor_table.dart';
import 'package:tennis_game_management/ui/components/home/infor_content/unit/title/welcome_title.dart';


class InforContent extends StatelessWidget {
  String name="";
  InforContent({String name=""}){this.name=name;}

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            WelcomeTitle(name: this.name),
            InforTable(),
          ],

        ),
        padding: EdgeInsets.only(bottom: 10)


    );
  }
}
