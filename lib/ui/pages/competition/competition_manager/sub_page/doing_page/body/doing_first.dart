import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/league/doing_league.dart';

class DoingFirst extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => DoingFirstState();
}

class DoingFirstState extends State<DoingFirst>{
  @override
  Widget build(BuildContext context) {

    return DoingLeague();
  }
}