import 'package:flutter/cupertino.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/body/tournament/round_tournament.dart';

class RoundSecond extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => RoundSecondState();
}

class RoundSecondState extends State<RoundSecond>{
  @override
  Widget build(BuildContext context) {
    return RoundTournament();
  }
}