import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/participation_page/list_item/participation_list_item.dart';

class ParticipationList extends StatefulWidget {

  List<dynamic>? participationListItem;
  ParticipationList(List<dynamic>? participationListItem){
    this.participationListItem = participationListItem;
    print(participationListItem);
  }

  @override
  State<StatefulWidget> createState() => ParticipationListState();
}

class ParticipationListState extends State<ParticipationList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.participationListItem != null ? widget.participationListItem!.length : 0,
        itemBuilder:(BuildContext context, int index){

          return ParticipationListItem(idx: index, name: "홍길동-라효진", rank: 102,);
        }
    );
  }
}


