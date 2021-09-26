
import "package:flutter/material.dart";
import 'package:tennis_game_management/core/db/model/rankers_time.dart';
import 'package:tennis_game_management/ui/components/competition/held/list_item/held_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';

class HeldList extends StatefulWidget{

  List<dynamic>? competitionListItems;

  HeldList(List<dynamic>? competitionListItems){
    this.competitionListItems = competitionListItems;
    print(competitionListItems);
  }

  @override
  State<StatefulWidget> createState() => HeldListState();

}

class HeldListState extends State<HeldList>{

  printCompetitionDate(String? startDay, String? endDay){
    return startDay! + "~ " + endDay!;
  }
  // HeldListItem(status: "공고중"),
  // HeldListItem(status: "신청중"),
  // HeldListItem(status: "신청종료"),
  // HeldListItem(status: "진행중"),

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection:Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.competitionListItems != null ? widget.competitionListItems!.length : 0,
        itemBuilder: (BuildContext context, int index){

        var data = widget.competitionListItems as List?;

        String participan="";
        String registrationDate="";
        String competitionDate="";
        try{
          // 참여 자수 카운터
          var particNum = data?[index]["participationNum"].toString();
          var particMaxNum = data?[index]["participationMaxNum"].toString();
          participan = particNum! + " /" + particMaxNum!;

          // 신청기간
          var startRDay = data?[index]["registrationDateStart"];
          var endRDay = data?[index]["registrationDateEnd"];
          registrationDate = printCompetitionDate(startRDay, endRDay);

          // 대회기간
          var startCDay = data?[index]["competitionDateStart"];
          var endCDay = data?[index]["competitionDateEnd"];
          competitionDate = printCompetitionDate(startCDay, endCDay);

        }catch(e){
          return EmptyPlace();
        }


        return HeldListItem(
            itemModel: data?[index],
            competitionId: data?[index]["competitionId"],
            competitionName: data?[index]["competitionName"],
            participan: participan,
            mode: data?[index]["mode"],
            place : data?[index]["place"],
            uploadDate: data?[index]["uploadDate"],
            registrationDate: registrationDate,
            competitionDate: competitionDate,
            firstTieCondition: data?[index]["firstTieCondition"],
            secondTieCondition: data?[index]["secondTieCondition"],
            thirdTieCondition: data?[index]["thirdTieCondition"],
            description: data?[index]["description"],
            writerId: data?[index]["writerId"],
            nickname: data?[index]["nickname"],
            state: data?[index]["state"],
        );
      }
    );
  }
}
