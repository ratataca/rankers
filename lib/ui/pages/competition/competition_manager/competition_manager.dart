import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_not_index.dart';

import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/list/manager_button_list.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/item/header_infor.dart';

class CompetitionManagerPage extends StatefulWidget {
  bool isOpener = false;
  bool isParticipate = false;

  CompetitionManagerPage(){
    // 유저 아이디랑 주최자가 같다면?
    this.isOpener = false;

    // 내가 만약 참여자라면?
    isParticipate = true;
  }
  @override
  State<StatefulWidget> createState() => CompetitionManagerPageState();
}

@override
class CompetitionManagerPageState extends State<CompetitionManagerPage>{
  bool isOpener = false;
  bool isParticipate = false;


  Widget build(BuildContext context) {
    var data = (ModalRoute.of(context)?.settings.arguments as dynamic);

    return Container(
        child: Scaffold(
          appBar: TgmAppBarNotIndex(title: "대회목록"),

          body: SafeArea(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      child: Column(
                        children: [
                          HeaderInfor(data),
                          HorizontalDivider(),

                          ManagerButtonList(data),
                          EmptyPlace()

                        ],
                      ),
                      padding: EdgeInsets.only(left: 16, right: 16),
                    ),
                  ),
                ),

              ],
            ),
          )
        )
    );
  }
}