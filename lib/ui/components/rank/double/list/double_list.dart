import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/double/list_item/double_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';


class DoubleList extends StatefulWidget {
  List? doubleSetListItem=null;

  DoubleList(List<dynamic>? doubleSetListItem){
    this.doubleSetListItem = doubleSetListItem;
  }

  @override
  State<StatefulWidget> createState() => DoubleListState();
}

class DoubleListState extends State<DoubleList>{
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // physics: BouncingScrollPhysics(),
        itemCount: widget.doubleSetListItem != null ? widget.doubleSetListItem!.length : 0,
        itemBuilder: (BuildContext context, int index){


          var data = widget.doubleSetListItem as List?;
          cnt = index + 1;
          // var playResult="";
          // var playTiebreak="";
          //
          // try{
          //   playResult = data![index]["myScore"].toString() + " : " + data[index]["opScore"].toString();
          //   playTiebreak = data[index]["myTiebreak"].toString() + " : " + data[index]["opTiebreak"].toString();
          // }catch(e){
          //   return EmptyPlace();
          // }

          return DoubleListItem(
            rankNum: this.cnt.toString(),
            name: "복식",
          );
        });
  }
}

