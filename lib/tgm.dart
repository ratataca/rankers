import "package:flutter/material.dart";
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/competition_manager.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/competition_doing_page.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/finish_page/finish_page.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/participation_page/manager_participation.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/competition_schedule_page.dart';

import 'package:tennis_game_management/ui/pages/competition/new_competiton_page/new_competition_page.dart';

import 'package:tennis_game_management/ui/pages/find_password/find_password_page.dart';
import 'package:tennis_game_management/ui/pages/login/login_page.dart';
import 'package:tennis_game_management/ui/pages/main_page.dart';
import 'package:tennis_game_management/ui/pages/record/record_add_page.dart';
import 'package:tennis_game_management/global_variables.dart';
import 'package:tennis_game_management/ui/pages/setting/setting_page.dart';
import 'package:tennis_game_management/ui/pages/sign_up/sign_up_page.dart';

import 'ui/pages/select_activity_area/select_activity_area.dart';
import 'ui/pages/sign_up/sign_up_nickname_page.dart';
import 'ui/pages/sign_up/sign_up_password_page.dart';

//region
Map<int, Color> color =
{
  50:Color.fromRGBO(45, 199, 130, .1),
  100:Color.fromRGBO(45, 199, 130, .2),
  200:Color.fromRGBO(45, 199, 130, .3),
  300:Color.fromRGBO(45, 199, 130, .4),
  400:Color.fromRGBO(45, 199, 130, .5),
  500:Color.fromRGBO(45, 199, 130, .6),
  600:Color.fromRGBO(45, 199, 130, .7),
  700:Color.fromRGBO(45, 199, 130, 0.8),
  800:Color.fromRGBO(45, 199, 130, 1.0),
  900:Color.fromRGBO(45, 199, 130, 1),
};
//endregion
class TGM extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => TGMState();

}

class TGMState extends State<TGM>{

  @override
  initState() {
    super.initState();
    rankersDd();
  }

  rankersDd() async{
    print(">>> 1. Database || Initialization & Connection Test");
    var res = await GlobalVar.db.init();

    if(res == true)   print(">>> Test1. Success");
    else              print(">>> Test1. Failed");

    // GlobalVar.db.drop("records");
    // print("drop...");

  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "T-GM",
      theme: ThemeData(
        // primarySwatch: Colors.teal,
        primarySwatch: MaterialColor(0xFF329D9C, color),

      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ko', 'KR'),
      ],
      // home: LoginPage(),
      home: LoginPage(),
      routes: {
        '/login' : (context) => LoginPage(),
        '/signUp' : (context) => SignUpPage(),
        '/signUpPassword' : (context) => SignUpPasswordPage(),
        '/signUpNickname' : (context) => SignUpNicknamePage(),
        '/signUpSelectArea' : (context) => SelectActivityAreaPage(),
        '/findPassword' : (context) => FindPasswordPage(),


        '/home' : (context) => MainPage(),


        // '/CompetitionListItemViewUser' : (context) => CompetitionListItemViewPage(),
        
        // 주최자 관리 페이지
        '/CompetitionManager' : (context) => CompetitionManagerPage(),

        // 1. 참가자 신청
        '/managerParticipation' : (context) => ManagerParticipationPage(),
        // 2. 대진표 작성
        '/competitionSchedule' : (context) => CompetitionSchedulePage(),
        '/competitionDoing' : (context) => DoingPage(),
        '/competitionFinish' : (context) => FinishPage(),
        // 3. 대회진행
        // 4. 대회종료


        '/newCompetitionOpen' : (context) => NewCompetitionPage(),


        '/recordAdd' : (context) => RecordAddPage(),
        '/setting' : (context) => SettingPage(),

      },
    );
  }
}