import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/core/db/model/db_record_model.dart';
import 'package:tennis_game_management/ui/components/home/board_content/list/board_list.dart';
import 'package:tennis_game_management/ui/components/home/infor_content/infor_content.dart';
import 'package:tennis_game_management/ui/components/home/unit/title/title.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';

import '../../../global_variables.dart';
import 'rocord_content/list/summary_record_list.dart';

class HomeArea extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeAreaState();
}

class HomeAreaState extends State<HomeArea>{
  List? recordListItems=null;

  @override
  initState(){
    super.initState();
    recordListPrint();
  }

  recordListPrint() async {
    var myRecordList = await GlobalVar.db.select(
        DbRecordModel.NAME,
        DbRecordModel.GET_INFO,
        DbRecordModel.Select5RecentRecord()
    );



    // TODO: select 몇 개만 불러오는 count 기능 필요 (select * from table limit 5)
    if(myRecordList.length >= 5){
      setState(() {
        recordListItems = myRecordList.sublist(0, 5);
      });
    }
    else{
      setState(() {
        recordListItems = myRecordList;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              
              InforContent(name: "May6",),

              HomeTitle(title: "게시판"),
              BoardList(),

              HomeTitle(title: "최근기록"),
              SummaryRecordList(recordListItems),

              EmptyPlace(),
            ],
          ),
        ),
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}