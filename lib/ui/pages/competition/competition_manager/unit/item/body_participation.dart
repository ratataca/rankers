import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/participation_page/list/participation_list.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/icon/participation_icon.dart';

import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/title/competition_list_title.dart';

class BodyParticipation extends StatefulWidget {

  dynamic data;
  BodyParticipation(dynamic data){this.data=data;}

  @override
  State<StatefulWidget> createState() => BodyParticipationState(this.data);


}

class BodyParticipationState extends State<BodyParticipation>{
  dynamic data;


  BodyParticipationState(dynamic data){
    this.data=data;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          child: Row(
            children: [
              CompetitionListTitle(title: "참여인원",),

              ParticipationIcon(title: "32 /100", size: 12,),
              Spacer(flex: 3)

            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
          height: 40,
          margin: EdgeInsets.only(bottom: 10, top: 10),
        ),

        Container(
          child: ParticipationList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]),
        )

      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

}


