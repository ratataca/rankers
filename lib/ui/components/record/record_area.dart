import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/core/db/model/db_record_model.dart';
import 'package:tennis_game_management/global_variables.dart';
import 'package:tennis_game_management/ui/components/record/list/record_list.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/resources/colors.dart';

class RecordArea extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => RecordAreaState();
}

class RecordAreaState extends State<RecordArea>{
  List? recordListItems=null;

  @override
  initState(){
    super.initState();
    recordListPrint();
  }

  recordListPrint() async {
    var filter = {
      'orderBy' : 'idx DESC',
    };
    var myRecordList = await GlobalVar.db.select(DbRecordModel.NAME, DbRecordModel.GET_INFO, filter);
    myRecordList.add(null);

    setState(() {
      recordListItems = myRecordList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              HorizontalDivider(),

              Flexible(
                child: RecordList(recordListItems),
                flex: 1,
              ),
            ],
          ),

          Positioned(
            bottom: 20,
            right: 15,
            child: Container(
                child:FloatingActionButton(
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),

                  onPressed: () async {
                    Navigator.pushNamed(context, '/recordAdd').then((value) => {
                      recordListPrint()
                    });


                    // var selectDbMyRecord = await GlobalVar.db.select(DbRecordModel.NAME, DbRecordModel.GET_INFO);
                    // selectDbMyRecord.add(null);
                    //
                    // setState(() {
                    //   recordListItems = selectDbMyRecord;
                    // });
                  },

                  backgroundColor: BUTTON_GREEN_COLOR,
                ),


            ),
          )
        ],
      ),
    );
  }
}