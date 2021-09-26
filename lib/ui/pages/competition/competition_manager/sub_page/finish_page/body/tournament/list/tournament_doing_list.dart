import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/tournament/list_item/tournament_list_item.dart';



class TournamentDoingList extends StatefulWidget{

  List<dynamic>? tournamentListItem;
  TournamentDoingList(List<dynamic>? v){
    this.tournamentListItem = v;
    print(tournamentListItem);
  }

  @override
  State<StatefulWidget> createState() => TournamentDoingListState(this.tournamentListItem);
}

class TournamentDoingListState extends State<TournamentDoingList>{
  List<dynamic>? tournamentListItem;

  TournamentDoingListState(List<dynamic>? v){
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

          return TournamentListItem(idx: index,);
        }
    );
  }
}
