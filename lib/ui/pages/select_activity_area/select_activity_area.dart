// import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/divider/content_divider.dart';

import 'content/local_area.dart';
import 'title/title.dart';


class SelectActivityAreaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SelectActivityAreaPageState();
}
@override

class SelectActivityAreaPageState extends State<SelectActivityAreaPage>{

  final int ALL_AREA = 1;
  final int SEOUL = 2;
  final int GYEONGGI = 3;
  final int INCHEON = 4;
  final int GANGWON = 5;
  final int DAEJEON = 6;
  final int CHUNGBUK = 7;
  final int CHUNGNAM = 8;
  final int BUSAN = 9;
  final int ULSAN = 10;
  final int DAEGU = 11;
  final int GYEONBUK = 12;
  final int GYEONGNAM = 13;
  final int GWANGJU = 14;
  final int JEONBUK = 15;
  final int JEONNAM = 16;
  final int JEJU = 17;
  final int PRIVATE = 18;

  bool isPhoneOk = true;
  bool errorInputPhone = false;
  bool errorCertificationNum = false;

  String verificationId = "";

  List<int> activityArea = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

  isSelectArea(int idx){
    idx = idx - 1 ;

    if(activityArea[idx] == 0){
      activityArea[idx] = 1;
      return true;

    }else{
      activityArea[idx] = 0;
      return false;
      }
  }


  Widget build(BuildContext context) {
    final Map<String, String> inforDict = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: TgmAppBarBase("회원가입", context),

      body: Column(
        children: <Widget>[
          SelectAreaTitle(title: "활동지역"),

          SizedBox(height: 6),

          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Wrap(
                  children: [


                    LocalAreaContent("전체 지역",  ALL_AREA, isSelectArea),
                    LocalAreaContent("서울",  SEOUL, isSelectArea),
                    LocalAreaContent("경기",  GYEONGGI, isSelectArea),
                    LocalAreaContent("인천",  INCHEON, isSelectArea),
                    LocalAreaContent("강원",  GANGWON, isSelectArea),
                    LocalAreaContent("대전",  DAEJEON, isSelectArea),
                    LocalAreaContent("충북",  CHUNGBUK, isSelectArea),
                    LocalAreaContent("충남",  CHUNGNAM, isSelectArea),
                    LocalAreaContent("부산",  BUSAN, isSelectArea),
                    LocalAreaContent("울산",  ULSAN, isSelectArea),
                    LocalAreaContent("대구",  DAEGU, isSelectArea),
                    LocalAreaContent("경북",  GYEONBUK, isSelectArea),
                    LocalAreaContent("경남",  GYEONGNAM, isSelectArea),
                    LocalAreaContent("광주",  GWANGJU, isSelectArea),
                    LocalAreaContent("전북",  JEONBUK, isSelectArea),
                    LocalAreaContent("전남",  JEONNAM, isSelectArea),
                    LocalAreaContent("제주",  JEJU, isSelectArea),
                    LocalAreaContent("비공개",  PRIVATE, isSelectArea),

                  ],
                  spacing: 8,
                  runSpacing: 8,
                ),
              ),
            ),
          ),

          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: BUTTON_LIGHT_GREEN_COLOR,
                shadowColor: Colors.transparent,
              ),
              onPressed: (){
                String areaText = "";
                for(int i=0; i<activityArea.length; i++){
                  if(activityArea[i]==1){
                    areaText += (i+1).toString() + " ";
                  }
                }
                print(areaText);

                inforDict['activeArea'] = areaText;
                Navigator.pushNamed(context, '/signUpNickname', arguments: inforDict);
              },
              child: Text(
                "지역 선택 완료",
                style: TextStyle(
                    fontSize:18
                ),
              ),
            ),
            height: 50,
            width: double.infinity,
            margin: EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5)
            ),
          )

        ],
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
