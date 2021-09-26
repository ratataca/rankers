import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/body/tournament/list_item/tournament_list_item.dart';


class TournamentList extends StatefulWidget{

  List<dynamic>? tournamentListItem;
  TournamentList(List<dynamic>? v){
    this.tournamentListItem = v;
    print(tournamentListItem);
  }

  @override
  State<StatefulWidget> createState() => TournamentListState(this.tournamentListItem);
}

class TournamentListState extends State<TournamentList>{
  List<dynamic>? tournamentListItem;

  TournamentListState(List<dynamic>? v){
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


          return TournamentListItem(idx: index);
        }
    );
  }
}
