import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/body/tournament/list_item/tournament_list_item.dart';


class TournamentList extends StatefulWidget{

  List<dynamic>? tournamentListItem;
  TournamentList(List<dynamic>? v){
    this.tournamentListItem = tournamentListItem;
    print(tournamentListItem);
  }

  @override
  State<StatefulWidget> createState() => TournamentListState();
}

class TournamentListState extends State<TournamentList>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.tournamentListItem != null ? widget.tournamentListItem!.length : 0,
        itemBuilder:(BuildContext context, int index){

          return TournamentListItem();
        }
    );
  }
}


//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/body/tournament/list_item/tournament_list_item.dart';
//
//
// class TournamentList extends StatefulWidget{
//
//   // List<dynamic>? tournamentListItem;
//   // TournamentList(List<dynamic>? v){
//   //   this.tournamentListItem = tournamentListItem;
//   //   print(tournamentListItem);
//   // }
//
//   @override
//   State<StatefulWidget> createState() => TournamentListState();
// }
//
// class TournamentListState extends State<TournamentList>{
//   final columns = ['매치순서', '조', '순위'];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: DataTable(
//         columns: getColumns(columns),
//         rows: getRows(data),
//       ),
//       width: double.infinity,
//
//     );
//   }
//   List<DataColumn> getColumns(List<String> columns) => columns
//       .map((String column) => DataColumn(
//     label: Text(column),
//   ))
//       .toList();
//
//   List<DataRow> getRows(List<dynamic> tournament) => data.map((dynamic data));
// }