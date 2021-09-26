import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/summary/list_item/individual_rank_table_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/resources/colors.dart';

// class IndividualRankTableItem extends StatelessWidget{
//
//   String title="";
//
//   IndividualRankTableItem({String title=""}){
//     this.title=title;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       children: [
//         Container(
//           child: Row(
//             children: [
//               Container(
//                 child: Text(
//                     this.title,
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: FONT_DARK_GRAY_COLOR,
//                     )
//                 ),
//                 width: 80,
//                 alignment: Alignment.center,
//               ),
//
//               Flexible(
//                 child: Container(
//                   child: Column(
//                     children: [
//                       IndividualRankListItem(category: "매치", name: "fs", ranking: "129", score: "329", ),
//                       HorizontalDivider(),
//                       IndividualRankListItem(category: "게임", name: "fs", ranking: "68", score: "120", ),
//                       // RankingLineDivider(),
//                     ],
//                   ),
//                 ),
//                 flex: 7,
//               ),
//             ],
//           ),
//         ),
//         HorizontalDivider(),
//       ],
//     );
//   }
// }

class IndividualRankTableItem extends StatefulWidget{
    String title="";

    IndividualRankTableItem({String title=""}){
      this.title=title;
    }
  @override
  State<StatefulWidget> createState() => IndividualRankTableItemState(this.title);
}

class IndividualRankTableItemState extends State<IndividualRankTableItem>{
  String title="";

  IndividualRankTableItemState(String title){
    this.title=title;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 14,
                      color: FONT_DARK_GRAY_COLOR,
                    )
                ),
                width: 80,
                alignment: Alignment.center,
              ),

              Flexible(
                child: Container(
                  child: Column(
                    children: [
                      IndividualRankListItem(category: "매치", name: "fs", ranking: "129", score: "329", ),
                      HorizontalDivider(),
                      IndividualRankListItem(category: "게임", name: "fs", ranking: "68", score: "120", ),
                      // RankingLineDivider(),
                    ],
                  ),
                ),
                flex: 7,
              ),
            ],
          ),
        ),
        HorizontalDivider(),
      ],
    );
  }
}