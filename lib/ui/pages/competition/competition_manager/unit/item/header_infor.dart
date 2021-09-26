import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/title/infor_text.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/title/infor_title_and_data.dart';

class HeaderInfor extends StatelessWidget {
  dynamic data;

  HeaderInfor(dynamic data){
    this.data = data;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [



            // 2. 대회내용 컨텐츠
            Container(
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
                    margin: EdgeInsets.only(bottom: 8),
                    // color: Color.fromARGB(40, 0, 129, 0),
                    padding: EdgeInsets.only( bottom: 12, top: 24),

                  ),

                  InforTitleAndData(title: "게시일자", data: this.data["uploadDate"]),


                  InforTitleAndData(title: "경기방식", data: this.data["mode"] == 'double'? "복식" : "단식"),
                  InforTitleAndData(title: "최대인원", data: data["participationMaxNum"].toString()),
                  InforTitleAndData(title: "예선방식", data: ""),
                  InforTitleAndData(title: "본선방식", data: ""),
                  InforTitleAndData(title: "Tie Break", data: ""),

                  InforTitleAndData(title: "신청기간", data: this.data["registrationDateStart"] + "~ "+  this.data["registrationDateEnd"]),
                  InforTitleAndData(title: "대회기간", data: this.data["competitionDateStart"] + "~ "+  this.data["competitionDateEnd"]),
                  InforTitleAndData(title: "경기장소", data:  this.data["place"]),

                  InforTitleAndData(title: "동점처리", data: ""),
                  Container(
                    child: Column(
                      children: [
                        InforTitleAndData(title: "1순위", data:  this.data["firstTieCondition"]),
                        InforTitleAndData(title: "2순위", data: this.data["secondTieCondition"]),
                        InforTitleAndData(title: "3순위", data: this.data["thirdTieCondition"]),

                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),

                  ),
                  InforTitleAndData(title: "기타사항", data: this.data['description'] == "" ? "없음" : this.data['description'] ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              padding: EdgeInsets.only( bottom: 28),
              decoration: new BoxDecoration(
                color: BACKGROUND_GREEN_TEST2,
                image: new DecorationImage(
                  alignment: Alignment.bottomRight,
                  // fit: BoxFit.scaleDown,
                    fit: BoxFit.fitWidth,
                  // image: this.index==1 ?
                    image : AssetImage('assets/img/icon_player_single3.png',)
                  //     :
                  // image : AssetImage('assets/img/icon_player_double2.png',),
                ),
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      // color: Color.fromARGB(100, 232, 232, 248),
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
    );
  }

}


