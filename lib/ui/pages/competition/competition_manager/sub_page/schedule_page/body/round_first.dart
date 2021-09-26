import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/body/league/round_league.dart';

class RoundFirst extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => RoundFirstState();
}

class RoundFirstState extends State<RoundFirst>{
  @override
  Widget build(BuildContext context) {

    return RoundLeague();
  }
}