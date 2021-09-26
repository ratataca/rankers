import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/list_item/schedule_user_list_item.dart';

class ScheduleUserList extends StatefulWidget {

  List<dynamic>? participationListItem;
  bool isOrganized=false;
  ScheduleUserList(List<dynamic>? participationListItem, bool isOrganized){
    this.participationListItem = participationListItem;
    this.isOrganized = isOrganized;
    print(participationListItem);
  }

  @override
  State<StatefulWidget> createState() => ScheduleUserListState(this.isOrganized);
}

class ScheduleUserListState extends State<ScheduleUserList> {
  bool isOrganized=false;
  ScheduleUserListState(bool isOrganized){
    this.isOrganized=isOrganized;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.participationListItem != null ? widget.participationListItem!.length : 0,
        itemBuilder:(BuildContext context, int index){

          return ScheduleUserListItem(name: "메이식스", team: 102, isOrganized: this.isOrganized,);
        }
    );
  }
}


