import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/couple/list/couple_list.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/title/body_title.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';

// class CoupleRankingBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           BodyTitle(title: "커플랭킹",),
//           CoupleList([1,1,2,2,3,4,4,3,24]),
//
//           EmptyPlace()
//         ],
//       ),
//       physics: BouncingScrollPhysics(),
//     );
//   }
//
// }

class CoupleRankingBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CoupleRankingBodyState();
}

class CoupleRankingBodyState extends State<CoupleRankingBody>{
  List? coupleListItem=null;

  @override
  initState(){
    super.initState();
    coupleContainerPrint();
  }

  coupleContainerPrint() async {

    // Todo- 데이터 통신
    // var filter = {
    //   'orderBy' : 'idx DESC',
    // };
    // var myRecordList = await GlobalVar.db.select(DbRecordModel.NAME, DbRecordModel.GET_INFO, filter);
    // myRecordList.add(null);

    setState(() {
      coupleListItem = coupleListItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          BodyTitle(title: "팀기준",),
          HorizontalDivider(),
          // DoubleList(doubleSetListItem)
          CoupleList([1, 3, 4, 1, 3, 4, 1, 3, 4, 6, 1, 3, 4, 6, 1, 3, 4,])
        ],
      ),
    );
  }

}
