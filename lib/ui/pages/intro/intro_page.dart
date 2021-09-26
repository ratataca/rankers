import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import 'package:tennis_game_management/core/db/model/db_record_model.dart';
import 'package:tennis_game_management/global_variables.dart';
import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_not_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/ui/pages/record/unit/title/record_add_title.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/pages/setting/list/setting_list.dart';



class IntroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => IntroPageState();
}
@override

class IntroPageState extends State<IntroPage>{



  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: TgmAppBarNotIndex(title: "설정"),
          body: SafeArea(
            child: Container(

            )
          ),
        )
    );
  }
}
