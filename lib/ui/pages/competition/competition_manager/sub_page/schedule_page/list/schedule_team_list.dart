import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/list_item/schedule_team_list_item.dart';


class ScheduleTeamList extends StatefulWidget {

  List<dynamic>? participationListItem;
  ScheduleTeamList(List<dynamic>? participationListItem){
    this.participationListItem = participationListItem;
    print(participationListItem);
  }

  @override
  State<StatefulWidget> createState() => ScheduleTeamListState();
}

class ScheduleTeamListState extends State<ScheduleTeamList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.participationListItem != null ? widget.participationListItem!.length : 0,
        itemBuilder:(BuildContext context, int index){

          return ScheduleTeamListItem(idx: index, name: "메이식스", rank: 102,);
        }
    );
  }
}


