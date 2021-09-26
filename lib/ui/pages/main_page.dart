import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:tennis_game_management/ui/components/board/board_area.dart';
import 'package:tennis_game_management/ui/components/competition/competition_area.dart';
import 'package:tennis_game_management/ui/components/home/home_area.dart';

import 'package:tennis_game_management/ui/components/rank/rank_area.dart';
import 'package:tennis_game_management/ui/components/record/record_area.dart';
import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar.dart';
import 'package:tennis_game_management/resources/colors.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage>{
  int currentIndex = 0;
  final List<Widget> childrenArea = [HomeArea(), CompetitionArea(), RankArea(), RecordArea(), BoardArea()];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      appBar: TgmAppBar(currentIndex, context),

      // 1. Body
      body: SafeArea(
        child: childrenArea[currentIndex],
      ),

      // 2. BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: OnTap,
        currentIndex: currentIndex,
        items: [
          new BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('홈', style: TextStyle(fontSize: 12))),
          new BottomNavigationBarItem(icon: Icon(Icons.assistant_photo), title: Text('대회', style: TextStyle(fontSize: 12),)),
          new BottomNavigationBarItem(icon: Icon(Icons.bar_chart), title: Text('랭킹', style: TextStyle(fontSize: 12),)),
          new BottomNavigationBarItem(icon: Icon(Icons.sports_tennis), title: Text('기록', style: TextStyle(fontSize: 12),)),
          new BottomNavigationBarItem(icon: Icon(Icons.event_note), title: Text('게시판', style: TextStyle(fontSize: 12),)),
        ],
        selectedItemColor: BACKGROUND_LIGHT_GREEN_COLOR,
      ),
    );
  }

  void OnTap(int index){ setState((){ currentIndex = index; }); }
}