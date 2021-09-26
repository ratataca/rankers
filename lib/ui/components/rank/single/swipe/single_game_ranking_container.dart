import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/single/list/single_list.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/title/body_title.dart';

// class SingleGameRankingContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           BodyTitle(title: "게임기준",),
//           SingleList()
//         ],
//       ),
//       physics: BouncingScrollPhysics(),
//     );
//   }
//
// }

class SingleGameRankingContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SingleGameRankingContainerState();
}

class SingleGameRankingContainerState extends State<SingleGameRankingContainer>{
  List? singleGameListItem=null;

  @override
  initState(){
    super.initState();
    singleGameContainerPrint();
  }

  singleGameContainerPrint() async {

    // Todo- 데이터 통신
    // var filter = {
    //   'orderBy' : 'idx DESC',
    // };
    // var myRecordList = await GlobalVar.db.select(DbRecordModel.NAME, DbRecordModel.GET_INFO, filter);
    // myRecordList.add(null);

    setState(() {
      singleGameListItem = singleGameListItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          BodyTitle(title: "게임기준",),
          HorizontalDivider(),
          // DoubleList(doubleSetListItem)
          SingleList([1, 3, 4, 1, 4, 4,])
        ],
      ),
    );
  }

}