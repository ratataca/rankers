import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/couple/couple_name.dart';
import 'package:tennis_game_management/ui/components/unit/divider/content_divider.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/single/single_name.dart';
import 'package:tennis_game_management/ui/components/unit/text/time_text.dart';

class SettingListItem extends StatelessWidget {
  var icon;
  String title="";

  SettingListItem(var icon, String title){
    this.icon=icon;
    this.title=title;
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          child: Row(
            children: [

              Icon(this.icon,size: 18),

              Container(
                child: Text(
                  this.title,
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                margin: EdgeInsets.only(left: 10),
              ),


            ],
          ),
          padding: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
          // color: Colors.green,
          // margin: EdgeInsets.only(bottom: 2),
        ),

        HorizontalDivider(),
      ],
    );
  }
}
