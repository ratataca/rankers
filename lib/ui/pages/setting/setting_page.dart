import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import 'package:tennis_game_management/core/db/model/db_record_model.dart';
import 'package:tennis_game_management/global_variables.dart';
import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_not_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/ui/pages/record/unit/title/record_add_title.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/pages/setting/list/setting_list.dart';



class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SettingPageState();
}
@override

class SettingPageState extends State<SettingPage>{
  // region 디비 관련 변수
  // bool isDouble=true;
  // DateTime selectedDate = DateTime.now();
  // String todayDate = DateTime.now().toString().substring(0,10);
  // String selectDate = "";
  //
  // final placeInput = TextEditingController(text: "한국기술교육대학교 테니스장");
  // final myPartner = TextEditingController(text: "라효진");
  // final opponent1 = TextEditingController(text: "홍길동");
  // final opponent2 = TextEditingController(text: "이영희");
  // final myScore = TextEditingController(text: "6");
  // final opScore = TextEditingController(text: "3");
  // final myTieBreak = TextEditingController(text: "0");
  // final opTieBreak = TextEditingController(text: "0");
  // endregion


  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: TgmAppBarNotIndex(title: "설정"),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    // 1. header - 아이콘, 이름
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child:  GestureDetector(
                              onTap: ()  {
                                // TODO- 편집 기
                                // Navigator.pushNamed(context, '/setting');
                                print("image editing!");
                              },
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(50.0),
                                child:CircleAvatar( backgroundImage: AssetImage("assets/img/my_img.jpg"), radius: 60.0, ),

                              ),
                            ),
                            height: 70,
                            width: 70,
                          ),

                          Container(
                            child: Text(
                              "May6",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            margin: EdgeInsets.only(top: 16),
                          )

                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                      width: double.infinity,
                      height: 200,
                      padding: EdgeInsets.only(top:30, bottom: 30),
                      // color:Colors.pink,
                    ),


                    // 2. 리스트로 필요한 것들 추가
                    SettingList(),

                    EmptyPlace(),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            )
          ),
        )
    );
  }
}
