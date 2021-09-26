import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/tournament/header/header.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/tournament/list/tournament_doing_list.dart';




class FinishTournament extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => FinishTournamentState();
}

class FinishTournamentState extends State<FinishTournament>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Expanded(
            flex: 1,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [

                  Header(126),
                  TournamentDoingList([1,3,4,6]),

                  Header(62),
                  TournamentDoingList([1,3]),

                  Header(32),
                  TournamentDoingList([1,3]),

                  Header(16),
                  TournamentDoingList([1]),

                  EmptyPlace()


                ],
              ),
            )
        )

      ],
    );
  }
}