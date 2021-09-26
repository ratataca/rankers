import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/league/list_item/league_doing_list_item.dart';


class LegueDoingList extends StatefulWidget{

  List<dynamic>? tournamentListItem;
  LegueDoingList(List<dynamic>? v){
    this.tournamentListItem = v;
    print(tournamentListItem);
  }

  @override
  State<StatefulWidget> createState() => LegueDoingListState(this.tournamentListItem);
}

class LegueDoingListState extends State<LegueDoingList>{
  List<dynamic>? tournamentListItem;

  LegueDoingListState(List<dynamic>? v){
    this.tournamentListItem = v;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.tournamentListItem != null ? widget.tournamentListItem!.length : 0,
        itemBuilder:(BuildContext context, int index){

          return LeagueDoingListItem(index);
        }
    );
  }
}
