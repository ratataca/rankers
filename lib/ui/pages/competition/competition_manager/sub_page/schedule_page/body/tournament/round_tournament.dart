import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/body/tournament/header/header.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/body/tournament/list/tournament_list.dart';


class RoundTournament extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => RoundTournamentState();
}

class RoundTournamentState extends State<RoundTournament>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HorizontalDivider(),

        Expanded(
          flex: 1,
          child: SingleChildScrollView(

            child: Column(
              children: [
                Header(),
                HorizontalDivider(),

                TournamentList([1,3,4,5,5,6]),


              ],
            ),
          )
        )

      ],
    );
  }
}