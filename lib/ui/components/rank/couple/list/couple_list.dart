import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/couple/list_item/couple_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';



// class CoupleList extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//
//               HorizontalDivider(),
//
//               CoupleListItem(rankNum: "1", name: "may6", partner: "생갈치1호의행방불명",),
//               CoupleListItem(rankNum: "2", name: "gywls18", partner: "태정태세문단속",),
//               CoupleListItem(rankNum: "3", name: "Ratataca", isMy: true, partner: "미미로",),
//
//             ],
//           ),
//           // padding: EdgeInsets.only(left: 16, right: 16),
//         ),
//         physics: BouncingScrollPhysics(),
//       ),
//
//     );
//   }
// }


class CoupleList extends StatefulWidget {
  List? coupleListItem=null;

  CoupleList(List<dynamic>? coupleListItem){
    this.coupleListItem = coupleListItem;
  }

  @override
  State<StatefulWidget> createState() => CoupleListState();
}

class CoupleListState extends State<CoupleList>{
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // physics: BouncingScrollPhysics(),
        itemCount: widget.coupleListItem != null ? widget.coupleListItem!.length : 0,
        itemBuilder: (BuildContext context, int index){


          var data = widget.coupleListItem as List?;
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

          return CoupleListItem(
            rankNum: this.cnt.toString(),
            name: "메이식스",
            partner: "생갈치1호의행방불명"
          );
        });
  }
}