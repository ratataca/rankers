import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/summary/list_item/couple_summary_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';


// CoupleSummaryListItem(ranking: "1", name: "may6",),

class CoupleSummaryList extends StatefulWidget {
  List? coupleSummaryListItem=null;

  CoupleSummaryList(List<dynamic>? coupleSummaryListItem){
    this.coupleSummaryListItem = coupleSummaryListItem;
  }

  @override
  State<StatefulWidget> createState() => CoupleSummaryListState();
}

class CoupleSummaryListState extends State<CoupleSummaryList>{
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // physics: BouncingScrollPhysics(),
        itemCount: widget.coupleSummaryListItem != null ? widget.coupleSummaryListItem!.length : 0,
        itemBuilder: (BuildContext context, int index){


          var data = widget.coupleSummaryListItem as List?;
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

          return CoupleSummaryListItem(
            rankNum: this.cnt.toString(),
            name: "메이식스",
          );
        });
  }

}