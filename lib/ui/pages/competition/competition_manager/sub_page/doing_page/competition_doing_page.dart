import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_not_index.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/doing_first.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/doing_page/body/doing_second.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/unit/tab/tab_control_content.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/title/infor_text.dart';



class DoingPage extends StatefulWidget {
  DoingPage(){

  }

  @override
  State<StatefulWidget> createState() => DoingPageState();
}

class DoingPageState extends State<DoingPage>{
  bool isLeague = true;
  String selectedTitle = "예선경기";
  int pageIdx = 0;
  bool isOpeningBtnVisible = false;
  var data;

  Widget build(BuildContext context) {
    data = (ModalRoute.of(context)?.settings.arguments as dynamic);

    return Container(
        child: Scaffold(
          appBar: TgmAppBarNotIndex(title: "대회 진행"),

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
                this.selectedTitle == "예선경기" ? "예선 종료" : "본선 종료",
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
        return DoingFirst();

      case "본선경기":
        this.pageIdx = 1;
        return DoingSecond();

      default:
        this.pageIdx = 0;
    // return AttendBody();

    }
  }
}