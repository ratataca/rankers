import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/unit/buttion/team_unorganized_view.dart';

class ScheduleUserListItem extends StatelessWidget {
  String name = "";
  int team=0;
  bool isOrganized=false;

  TextEditingController newPlayerName = TextEditingController();

  ScheduleUserListItem({String name="", int team=0, bool isOrganized=false}){
    this.name=name;
    this.team=team;
    this.isOrganized=isOrganized;
  }


  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: Text("메이식스"),
                  // width: 70,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 26, top: 16, bottom: 16),
                ),
              ),

             Expanded(
               flex: 2,
               child: Column(
                 children: [
                   Container(
                     child: this.isOrganized ? Text("1"+" 조") : Container(child: TeamUnorganized(), width: 56, height: 28,),
                     margin:this.isOrganized ?  EdgeInsets.only(right: 26, top: 16, bottom: 16) : EdgeInsets.only(right: 16),
                     alignment: Alignment.centerRight,
                     // color: Colors.redAccent,
                   ),
                 ],
               ),
             )

            ],
          ),
          // color: SUB_BACKGROUND_LIGHT_GREEN_COLOR,
        ),
        HorizontalDivider(),
      ],
    );
  }

}


