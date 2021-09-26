import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/competition/unit/event_icon/icon_state_outline.dart';
import 'package:tennis_game_management/ui/components/competition/unit/icon/participan_icon.dart';
import 'package:tennis_game_management/ui/components/competition/unit/text/list_item_content.dart';
import 'package:tennis_game_management/ui/components/competition/unit/text/list_item_title.dart';
import 'package:tennis_game_management/resources/colors.dart';

class RecordListItem extends StatelessWidget {
  String playTitle="";

  String period= "2021. 08. 09 ~ 2021. 09. 20";
  String place="경상북도 김천시 부곡동 우방아파트 근처 김천고등학교 체육관";
  String participan ="10/21";
  String status ="";

  RecordListItem({String playTitle="", String period="", String place="", String participan="", String status=""})
  {
    this.playTitle=playTitle;
    this.status=status;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        children: [
          // 1. 대회명, 대회기간, 장소
          Flexible(
            child: Container(
              child: Column(
                children: [

                  // 1. 1. 대회명
                  ListItemTitle(title: "경기도민 친목 대회"),

                  // 1. 2. 기간, 장소
                  ListItemContent(period: this.period, place: this.place,)

                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            flex: 4,
          ),

          // 2. New / Hot icon & 참여인원
          Flexible(
            child: Container(
              child: Column(
                children: [
                  // 2. 1. New / Hot icon
                  Container(child: IconStateOutline(title: status,)),

                  // 2. 2. 참여인원
                  ParticipanIcon(participan: this.participan)

                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
              ),
              // color: Colors.blue,
              alignment: Alignment.bottomRight,
            ),
            flex: 1,
          ),

        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      height: 90,
      // color: Colors.yellow,
      padding: EdgeInsets.only(left: 8, top: 10, bottom: 10, right: 10,),
      margin: EdgeInsets.only(bottom: 5),
    );

  }
}
