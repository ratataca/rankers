import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/single/list_item/single_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';


class SingleList extends StatefulWidget {
  List? singleListItem=null;

  SingleList(List<dynamic>? singleListItem){
    this.singleListItem = singleListItem;
  }

  @override
  State<StatefulWidget> createState() => SingleListState();
}

class SingleListState extends State<SingleList>{
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // physics: BouncingScrollPhysics(),
        itemCount: widget.singleListItem != null ? widget.singleListItem!.length : 0,
        itemBuilder: (BuildContext context, int index){


          var data = widget.singleListItem as List?;
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

          return SingleListItem(
            rankNum: this.cnt.toString(),
            name: "라효진",
            score: (this.cnt * 9).toString(),
            isUp: true,
          );
        });
  }
}