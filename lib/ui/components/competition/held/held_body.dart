import "package:flutter/material.dart";
import 'package:tennis_game_management/core/db/model/db_competition_model.dart';
import 'package:tennis_game_management/global_variables.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'list/held_list.dart';

class HeldBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HeldBodyState();

}

class HeldBodyState extends State<HeldBody>{
  List? competitionListItems=null;

  @override
  void initState() {
    super.initState();
    competitionListPrint();

  }

  competitionListPrint() async {
    var filter = {
      'orderBy' : 'idx DESC',
    };
    var myCompetitionList = await GlobalVar.db.select(DbCompetitionModel.NAME, DbCompetitionModel.GET_INFO, filter);

    setState(() {
      competitionListItems = myCompetitionList;
    });
    print(competitionListItems);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  HeldList(competitionListItems),
                ]
              ),
              padding: EdgeInsets.only(left: 16, right: 16),
              width: double.infinity,
            )
          )
        ),


        Positioned(
          bottom: 20,
          right: 15,
          child: Container(
              child: FloatingActionButton(
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),

                onPressed: () => {
                  Navigator.pushNamed(context, '/newCompetitionOpen').then((value) => {
                    competitionListPrint()
                  })},
                backgroundColor: BUTTON_GREEN_COLOR,
              )
          ),
        )
      ],
    );
  }

}


// class HeldBody extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => HeldBodyState();
//
// }
//
// class HeldBodyState extends State<HeldBody>{
//   List? competitionListItems=null;
//
//   @override
//   void initState() {
//     super.initState();
//     competitionListPrint();
//
//   }
//
//   competitionListPrint() async {
//     var filter = {
//       'orderBy' : 'idx DESC',
//     };
//     var myCompetitionList = await GlobalVar.db.select(DbCompetitionModel.NAME, DbCompetitionModel.GET_INFO, filter);
//     myCompetitionList.add(null);
//
//     setState(() {
//       competitionListItems = myCompetitionList;
//     });
//     print(competitionListItems);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               child: Column(
//                 children: [
//                   HeldList(competitionListItems),
//                 ],
//               ),
//               padding: EdgeInsets.only(left: 16, right: 16),
//               color: Colors.greenAccent,
//               // height: 400,
//               width: double.infinity,
//             ),
//             EmptyPlace(),
//           ],
//         ),
//         physics: BouncingScrollPhysics(),
//       ),
//     );
//
//   }
//
//
// }
