import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';

class ScheduleTeamListItem extends StatelessWidget {
  String idx = "";
  String name = "";
  int rank=0;

  ScheduleTeamListItem({int idx=0, String name="", int rank=0}){
    this.idx=(idx+1).toString();
    this.name=name;
    this.rank=rank;
  }


  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Text(
                  "1 조",
                  style: TextStyle(
                    // fontWeight: FontWeight.bold
                  ),
                ),

                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
              ),

             Flexible(
               flex: 1,
               child: Container(
                 child: Row(
                   children: [
                     Container(
                       child: Text(
                         "12",
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 12
                         ),
                       ),
                       margin: EdgeInsets.only(right: 12),
                       padding: EdgeInsets.only(right: 8, left: 8, top: 2, bottom: 2),
                       alignment: Alignment.centerRight,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(100),
                           color: BACKGROUND_GREEN_56c596,
                           border: Border.all(
                             width: 1,
                             color: BACKGROUND_GREEN_56c596,
                           )
                       ),
                     )
                   ],
                   mainAxisAlignment: MainAxisAlignment.end,
                 ),
               ),

             )


            ],
          ),
          // padding: EdgeInsets.only(),
        ),
        HorizontalDivider(),
      ],
    );
  }

}


