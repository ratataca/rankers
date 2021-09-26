import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/core/db/model/db_competition_model.dart';
import 'package:tennis_game_management/ui/components/competition/unit/event_icon/icon_state_outline.dart';
import 'package:tennis_game_management/ui/components/competition/unit/icon/participan_icon.dart';
import 'package:tennis_game_management/ui/components/competition/unit/text/list_item_content.dart';
import 'package:tennis_game_management/ui/components/competition/unit/text/list_item_title.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';

class HeldListItem extends StatelessWidget {

  String competitionId="";
  String competitionName="";
  String participan="";
  String mode="double";
  String place="";
  String uploadDate="";
  String registrationDate="";
  String competitionDate="";
  String firstTieCondition="";
  String secondTieCondition="";
  String thirdTieCondition="";
  String description="";
  String writerId="";
  String nickname="";
  String status ="";

  dynamic itemModel=null;

  HeldListItem({
    dynamic itemModel=null,
    String competitionId="",
    String competitionName="",
    String participan="",
    String mode="",
    String place="",
    String uploadDate="",
    String registrationDate="",
    String competitionDate="",
    String firstTieCondition="",
    String secondTieCondition="",
    String thirdTieCondition="",
    String description="",
    String writerId="",
    String nickname="",
    String state=""
  })
  {
    this.itemModel = itemModel;
    this.competitionId=competitionId;
    this.competitionName=competitionName;
    this.participan=participan;
    this.mode=mode;
    this.place=place;
    this.uploadDate=uploadDate;
    this.registrationDate=registrationDate;
    this.competitionDate=competitionDate;
    this.firstTieCondition=firstTieCondition;
    this.secondTieCondition=secondTieCondition;
    this.thirdTieCondition=thirdTieCondition;
    this.description=description;
    this.writerId=writerId;
    this.nickname=nickname;
    this.status=state;  // 공고중, 신청중 신청종료, 대진표작성, 진행중
  }




  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () async {

        final result = await Navigator.pushNamed(context,'/CompetitionManager', arguments: this.itemModel);

      },
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    child: Column(
                      children: [
                        ListItemTitle(title: this.competitionName),
                        ListItemContent(period: this.competitionDate, place: this.place,)
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    // color: Colors.green,
                  ),
                  flex: 4,
                ),

                // 2. 참여 인원
                Flexible(
                  child: Container(
                    child: Column(
                      children: [
                        Container(child: IconStateOutline(title: status,)),

                        ParticipanIcon(participan: this.participan)

                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                  flex: 1,
                ),

              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            height: 86,
            padding: EdgeInsets.only(left: 8, top: 10, bottom: 10, right: 10,),
            margin: EdgeInsets.only(bottom: 5),
            color: Colors.transparent,
          ),
          HorizontalDivider(),
        ],
      ),
    );
  }
}
