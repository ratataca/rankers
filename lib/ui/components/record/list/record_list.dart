import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/record/list_item/record_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';

class RecordList extends StatefulWidget {
  List<dynamic>? recordListItems;

  RecordList(List<dynamic>? recordListItems){
    this.recordListItems = recordListItems;
  }

  @override
  State<StatefulWidget> createState() => RecordListState();
}

class RecordListState extends State<RecordList>{
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: widget.recordListItems != null ? widget.recordListItems!.length : 0,
        itemBuilder: (BuildContext context, int index){


          var data = widget.recordListItems as List?;

          var playResult="";
          var playTiebreak="";

          try{
            playResult = data![index]["myScore"].toString() + " : " + data[index]["opScore"].toString();
            playTiebreak = data[index]["myTiebreak"].toString() + " : " + data[index]["opTiebreak"].toString();
          }catch(e){
            return EmptyPlace();
          }


          return RecordListItem(
            isSinglePlay: data[index]["mode"] == "double" ? false : true,
            isCertification: data[index]["isCertification"] == 0 ? true : false,
            isCompetition: data[index]["isCompetition"] == 0 ? true : false,

            myName: data[index]["partner1"],
            partner: data[index]["mode"] == "double" ? data[index]["partner2"] : "",
            oppName1: data[index]["opponent1"],
            oppName2: data[index]["mode"] == "double" ? data[index]["opponent2"] : "",
            playTime: data[index]["date"],
            playPlace: data[index]["place"],
            playResult: playResult,
            playTiebreak : playTiebreak,
          );
    });
  }


}
