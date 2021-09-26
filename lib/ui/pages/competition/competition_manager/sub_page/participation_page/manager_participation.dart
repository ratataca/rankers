import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_not_index.dart';

import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/item/body_participation.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/item/header_infor.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/title/infor_text.dart';

class ManagerParticipationPage extends StatefulWidget {
  bool isOpener = false;
  bool isParticipate = false;


  @override
  State<StatefulWidget> createState() => ManagerParticipationPageState();
}

@override
class ManagerParticipationPageState extends State<ManagerParticipationPage>{
  var data;
  TextEditingController newPlayerName = TextEditingController();

  Widget build(BuildContext context) {
    data = (ModalRoute.of(context)?.settings.arguments as dynamic);

    showAlertDialog() async {
      Widget okButton = TextButton(
        child: Text("OK"), onPressed: () {
        Navigator.pop(context);
      },
      );

      AlertDialog alert = await AlertDialog(
        title: Text("참가자 추가", style: TextStyle(fontSize: 18),),

        content:  Row(
          children: [
            Text("이름"),
            SizedBox(width: 12,),
            Flexible(
              child: TextField(
                controller: newPlayerName,
                decoration: InputDecoration(
                ),
              ),
              flex: 1,
            ),
          ],
        ),

        actions: [okButton,],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return Container(
        child: Scaffold(
          appBar: TgmAppBarNotIndex(title: "참가자 신청"),

          body: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
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
                      alignment: Alignment.centerLeft,
                      // margin: EdgeInsets.only(bottom: 8),
                      // color: Color.fromARGB(40, 0, 129, 0),
                      padding: EdgeInsets.only( bottom: 20, top: 20),
                    ),

                    // HorizontalDivider(),

                    BodyParticipation(data),

                    EmptyPlace()

                  ],
                ),
                padding: EdgeInsets.only(left: 16, right: 16),
              ),

            ),

          ),

          bottomNavigationBar: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text(
                        "참가신청 종료",
                        style: TextStyle(
                          fontSize: 18,

                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary:FONT_DEFUALT_GRAY_COLOR,
                        shadowColor: Colors.transparent,
                      ),
                    ),
                    height: 48,
                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 6),


                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    child: ElevatedButton(
                      onPressed: (){
                        showAlertDialog();
                      },
                      child: Text(
                        "인원추가",
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
                    margin: EdgeInsets.only(right: 10, bottom: 6),

                  ),
                ),
              ],
            ),

          ),
        )
    );
  }
}