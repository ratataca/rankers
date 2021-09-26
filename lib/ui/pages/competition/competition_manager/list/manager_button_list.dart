import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/list_item/manager_button_list_item.dart';
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/title/participation_title.dart';


class ManagerButtonList extends StatefulWidget{
  dynamic data;

  ManagerButtonList(dynamic data){
    this.data = data;
  }
  @override
  State<StatefulWidget> createState() => ManagerButtonListState(this.data);
}

class ManagerButtonListState extends State<ManagerButtonList>{
  dynamic data;

  ManagerButtonListState(dynamic data){
    this.data = data;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          ParticipationTitle(title: "경기관리",),



          Container(
            child: Column(
              children: [
                SizedBox(height: 20,),
                ManagerButtonListItem(data: this.data, title: "참가자 신청", isDone: true),

                ManagerButtonListItem(data: this.data, title: "대진표 작성", isDoing: true,),

                ManagerButtonListItem(data: this.data, title: "대회 진행"),

                ManagerButtonListItem(data: this.data, title: "대회 종료"),






              ],
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            width: double.infinity,
          ),

        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      // height: 700,
      width: double.infinity,
      // color: Color.fromARGB(223,234,234, 234),
    );
  }
}
