import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_not_index.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/body/round_first.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/body/round_second.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/list/schedule_team_list.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/list/schedule_user_list.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/unit/tab/tab_control_content.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/title/infor_text.dart';



class CompetitionSchedulePage extends StatefulWidget {
  CompetitionSchedulePage(){

  }

  @override
  State<StatefulWidget> createState() => CompetitionSchedulePageState();
}

@override
class CompetitionSchedulePageState extends State<CompetitionSchedulePage>{
  bool isLeague = true;
  String selectedTitle = "예선경기";
  int pageIdx = 0;
  bool isOpeningBtnVisible = false;
  var data;

  Widget build(BuildContext context) {
    data = (ModalRoute.of(context)?.settings.arguments as dynamic);

    return Container(
        child: Scaffold(
          appBar: TgmAppBarNotIndex(title: "대진표 작성"),

          body: SafeArea(
            child: Container(
              child: Column(
                children: [

                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.flag, size: 26, color: BUTTON_GREEN_COLOR,),
                        SizedBox(width: 6,),
                        HeaderInforText(title: this.data["competitionName"], size: 18, isBold: true),
                      ],
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 20, bottom: 32, left: 16),
                  ),


                  TabControlContent(
                      selectedTitle: this.selectedTitle,
                      onWhichTabClicked: onWhichTabClicked
                  ),



                  Flexible(
                      child: onTabChange(),
                      flex: 1
                  ),

                ],
              ),
            ),
          ),
            bottomNavigationBar : Container(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text(
                  "대진표 확정",
                  style: TextStyle(
                    fontSize: 18,

                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary:BUTTON_GREEN_COLOR,
                  shadowColor: Colors.transparent,
                ),
              ),
              height: 48,
              color: Colors.transparent,
              margin: EdgeInsets.only(left: 16, bottom: 6, right: 16),
            ),
        )
    );
  }
  onWhichTabClicked(String selectedTitle){
    setState((){ this.selectedTitle = selectedTitle; });
  }

  onTabChange(){
    setState(() { isOpeningBtnVisible = false; });
    switch (this.selectedTitle){

      case "예선경기":
        this.pageIdx = 0;
        return RoundFirst();

      case "본선경기":
        this.pageIdx = 1;
        return RoundSecond();

      default:
        this.pageIdx = 0;
        // return AttendBody();

    }
  }
}