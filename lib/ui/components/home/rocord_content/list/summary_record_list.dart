import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/home/rocord_content/list_item/summary_record_list_item.dart';
import 'package:tennis_game_management/ui/components/record/list_item/record_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';

class SummaryRecordList extends StatefulWidget {
  List<dynamic>? data;

  SummaryRecordList(List<dynamic>? recordListItems){
    this.data = recordListItems;
    print(this.data);
  }

  @override
  State<StatefulWidget> createState() => SummaryRecordListState();
}

class SummaryRecordListState extends State<SummaryRecordList>{

  var playResult;
  var playTiebreak;

  // SummaryRecordListState(List<dynamic>? recordListItems){
  //   // this.data = recordListItems;
  //   //
  //   // if(this.data != null){
  //   //   playResult = data![0]["myScore"].toString() + " : " + data![0]["opScore"].toString();
  //   //   playTiebreak = data![0]["myTiebreak"].toString() + " : " + data![0]["opTiebreak"].toString();
  //   //
  //   // }
  // }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        widget.data != null && widget.data!.length >= 1 ?
        RecordListItem(
            isSinglePlay: widget.data![0]["mode"] == "double" ? false : true,
            isCertification: widget.data![0]["isCertification"] == 0 ? true : false,
            isCompetition: widget.data![0]["isCompetition"] == 0 ? true : false,

            myName: widget.data![0]["partner1"],
            partner: widget.data![0]["mode"] == "double" ? widget.data![0]["partner2"] : "",
            oppName1: widget.data![0]["opponent1"],
            oppName2: widget.data![0]["mode"] == "double" ? widget.data![0]["opponent2"] : "",
            playTime: widget.data![0]["date"],
            playPlace: widget.data![0]["place"],
            playResult: widget.data![0]["myScore"].toString() + " : " + widget.data![0]["opScore"].toString(),
            playTiebreak : widget.data![0]["myTiebreak"].toString() + " : " + widget.data![0]["opTiebreak"].toString(),
          ) : Container(),

        widget.data != null && widget.data!.length >= 2 ?
        RecordListItem(
          isSinglePlay: widget.data![1]["mode"] == "double" ? false : true,
          isCertification: widget.data![1]["isCertification"] == 0 ? true : false,
          isCompetition: widget.data![1]["isCompetition"] == 0 ? true : false,

          myName: widget.data![1]["partner1"],
          partner: widget.data![1]["mode"] == "double" ? widget.data![1]["partner2"] : "",
          oppName1: widget.data![1]["opponent1"],
          oppName2: widget.data![1]["mode"] == "double" ? widget.data![1]["opponent2"] : "",
          playTime: widget.data![1]["date"],
          playPlace: widget.data![1]["place"],
          playResult: widget.data![1]["myScore"].toString() + " : " + widget.data![1]["opScore"].toString(),
          playTiebreak : widget.data![1]["myTiebreak"].toString() + " : " + widget.data![1]["opTiebreak"].toString(),
        ) : Container(),

        widget.data != null && widget.data!.length >= 3 ?
        RecordListItem(
          isSinglePlay: widget.data![2]["mode"] == "double" ? false : true,
          isCertification: widget.data![2]["isCertification"] == 0 ? true : false,
          isCompetition: widget.data![2]["isCompetition"] == 0 ? true : false,

          myName: widget.data![2]["partner1"],
          partner: widget.data![2]["mode"] == "double" ? widget.data![2]["partner2"] : "",
          oppName1: widget.data![2]["opponent1"],
          oppName2: widget.data![2]["mode"] == "double" ? widget.data![2]["opponent2"] : "",
          playTime: widget.data![2]["date"],
          playPlace: widget.data![2]["place"],
          playResult: widget.data![2]["myScore"].toString() + " : " + widget.data![2]["opScore"].toString(),
          playTiebreak : widget.data![2]["myTiebreak"].toString() + " : " + widget.data![2]["opTiebreak"].toString(),
        ) : Container(),

        widget.data != null && widget.data!.length >= 4 ?
        RecordListItem(
          isSinglePlay: widget.data![3]["mode"] == "double" ? false : true,
          isCertification: widget.data![3]["isCertification"] == 0 ? true : false,
          isCompetition: widget.data![3]["isCompetition"] == 0 ? true : false,

          myName: widget.data![3]["partner1"],
          partner: widget.data![3]["mode"] == "double" ? widget.data![3]["partner2"] : "",
          oppName1: widget.data![3]["opponent1"],
          oppName2: widget.data![3]["mode"] == "double" ? widget.data![3]["opponent2"] : "",
          playTime: widget.data![3]["date"],
          playPlace: widget.data![3]["place"],
          playResult: widget.data![3]["myScore"].toString() + " : " + widget.data![3]["opScore"].toString(),
          playTiebreak : widget.data![3]["myTiebreak"].toString() + " : " + widget.data![3]["opTiebreak"].toString(),
        ) : Container(),

        widget.data != null && widget.data!.length >= 5 ?
        RecordListItem(
          isSinglePlay: widget.data![4]["mode"] == "double" ? false : true,
          isCertification: widget.data![4]["isCertification"] == 0 ? true : false,
          isCompetition: widget.data![4]["isCompetition"] == 0 ? true : false,

          myName: widget.data![4]["partner1"],
          partner: widget.data![4]["mode"] == "double" ? widget.data![4]["partner2"] : "",
          oppName1: widget.data![4]["opponent1"],
          oppName2: widget.data![4]["mode"] == "double" ? widget.data![4]["opponent2"] : "",
          playTime: widget.data![4]["date"],
          playPlace: widget.data![4]["place"],
          playResult: widget.data![4]["myScore"].toString() + " : " + widget.data![4]["opScore"].toString(),
          playTiebreak : widget.data![4]["myTiebreak"].toString() + " : " + widget.data![4]["opTiebreak"].toString(),
        ) : Container(),



      ],
    );
  }


}
