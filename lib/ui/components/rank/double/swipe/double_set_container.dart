import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/double/list/double_list.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/title/body_title.dart';

class DoubleSetContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DoubleSetContainerState();
}

class DoubleSetContainerState extends State<DoubleSetContainer>{
  List? doubleSetListItem=null;

  @override
  initState(){
    super.initState();
    doubleSetContainerPrint();
  }

  doubleSetContainerPrint() async {

    // Todo- 데이터 통신
    // var filter = {
    //   'orderBy' : 'idx DESC',
    // };
    // var myRecordList = await GlobalVar.db.select(DbRecordModel.NAME, DbRecordModel.GET_INFO, filter);
    // myRecordList.add(null);

    setState(() {
      doubleSetListItem = doubleSetListItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          BodyTitle(title: "매치기준",),
          HorizontalDivider(),
          // DoubleList(doubleSetListItem)
          DoubleList([1, 3, 4, 1, 3, 4, 1, 3, 4, 6, 1, 3, 4, 6, 1, 3, 4,])
        ],
      ),
    );
  }

}

//
// import "package:flutter/material.dart";
// import 'package:tennis_game_management/ui/components/rank/double/list/double_list.dart';
// import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
// import 'package:tennis_game_management/ui/components/unit/title/body_title.dart';
//
// class DoubleSetContainer extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => DoubleSetContainerState();
// }
//
// class DoubleSetContainerState extends State<DoubleSetContainer>{
//   List? doubleSetListItem=null;
//
//   @override
//   initState(){
//     super.initState();
//     doubleSetContainerPrint();
//   }
//
//   doubleSetContainerPrint() async {
//
//     // Todo- 데이터 통신
//     // var filter = {
//     //   'orderBy' : 'idx DESC',
//     // };
//     // var myRecordList = await GlobalVar.db.select(DbRecordModel.NAME, DbRecordModel.GET_INFO, filter);
//     // myRecordList.add(null);
//
//     setState(() {
//       doubleSetListItem = doubleSetListItem;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           BodyTitle(title: "매치기준",),
//           HorizontalDivider(),
//           // DoubleList(doubleSetListItem)
//           DoubleList([1,1,1,1,1,1,1,2])
//         ],
//       ),
//       physics: BouncingScrollPhysics(),
//     );
//   }
//
// }
