import "package:flutter/material.dart";
import 'package:tennis_game_management/core/db/model/db_record_model.dart';
import 'package:tennis_game_management/core/db/model/rankers_time.dart';
import 'package:tennis_game_management/global_variables.dart';
import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_not_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:tennis_game_management/ui/pages/record/unit/title/record_add_title.dart';
import 'package:tennis_game_management/resources/colors.dart';

import 'unit/mode/mode_choice.dart';



class RecordAddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RecordAddPageState();
}

@override
class RecordAddPageState extends State<RecordAddPage>{
  bool isDouble=true;
  DateTime selectedDate = DateTime.now();
  String todayDate = DateTime.now().toString().substring(0,10);
  String selectDate = "";

  final placeInput = TextEditingController(text: "한국기술교육대학교 테니스장");
  final myPartner1 = TextEditingController(text: "내이름");
  final myPartner2 = TextEditingController(text: "라효진");
  final opponent1 = TextEditingController(text: "홍길동");
  final opponent2 = TextEditingController(text: "이영희");
  final myScore = TextEditingController(text: "6");
  final opScore = TextEditingController(text: "3");
  final myTieBreak = TextEditingController(text: "0");
  final opTieBreak = TextEditingController(text: "0");

  selectDouble(){
    isDouble = true;
  }
  selectSingle(){
    isDouble = false;
  }


  bool _decideWhichDayToEnable(DateTime day) {
    if (day.isAfter(DateTime.now())
        // && day.isBefore(DateTime.now().day)
    ){
      print(day.isAfter(DateTime.now()));
      return false;
    }
    return true;
  }

  _selectDate(BuildContext context) async {

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2019),
      lastDate: DateTime(2030),
      helpText: "",
      errorFormatText: '유효한 날짜를 입력하세요',
      errorInvalidText: '유효한 범위에 날짜를 입력하세요',
      selectableDayPredicate: _decideWhichDayToEnable,

    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: TgmAppBarNotIndex(title: "경기기록"),
          body: SafeArea(
            child: Column(
              children: [
                Flexible(
                    child: SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: [

                            ModeChoice(this.isDouble, selectDouble, selectSingle),

                            // 날짜
                            Row(
                              children: [
                                RecordAddTitle(title: "날짜"),

                                Flexible(
                                  child: GestureDetector(
                                      onTap : (){
                                        _selectDate(context);
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              RankersTime(selectedDate).printRankersTimeFormat(),

                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                            // height: 50,
                                            // color: Colors.blue,
                                            alignment: Alignment.centerLeft,
                                            width: 160,
                                            padding: EdgeInsets.only(left: 10),

                                          ),
                                        ],
                                        mainAxisAlignment: MainAxisAlignment.start,
                                      )
                                  ),
                                  flex: 4,
                                )
                              ],
                            ),

                            // 장소
                            Row(
                              children: [
                                RecordAddTitle(title: "장소"),

                                Flexible(
                                  child: Container(
                                    child: TextField(
                                      style: TextStyle(fontSize: 16),
                                      autofocus: false,
                                      controller: placeInput,
                                    ),
                                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                    height: 30,
                                    // width: ,
                                  ),
                                  flex: 4,
                                )
                              ],
                            ),

                            // 파트너
                            Row(
                              children: [
                                RecordAddTitle(title: "파트너"),

                                Flexible(
                                  child: Row(
                                    children: [

                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 16),
                                            controller: myPartner1,
                                            decoration: InputDecoration(
                                                suffixIcon: IconButton(
                                                  icon: Icon(
                                                    Icons.search_rounded,
                                                  ),
                                                  onPressed: (){

                                                  },
                                                )
                                            ),

                                          ),
                                          margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                          height: 30,
                                          width: 100,
                                        ),
                                        flex: 1,
                                      ),

                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            // autofocus: true,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 16),
                                            controller: myPartner2,
                                          ),
                                          margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                          height: 30,
                                          width: 100,
                                        ),
                                        flex: 1,
                                      )
                                    ],
                                  ),
                                  flex: 4,
                                )
                              ],
                            ),

                            //상대팀
                            Row(
                              children: [
                                RecordAddTitle(title: "상대팀"),

                                Flexible(
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            // autofocus: true,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 16),
                                            controller: opponent1,
                                          ),
                                          margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                          height: 30,
                                          width: 100,
                                        ),
                                        flex: 1,
                                      ),

                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            // autofocus: true,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 16),
                                            controller: opponent2,
                                          ),
                                          margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                          height: 30,
                                          width: 100,
                                        ),
                                        flex: 1,
                                      )
                                    ],
                                  ),
                                  flex: 4,
                                ),
                              ],
                            ),

                            // 경기 결과
                            Row(
                              children: [
                                RecordAddTitle(title: "경기 결과"),

                                Flexible(
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            textAlign: TextAlign.center,

                                            style: TextStyle(
                                                fontSize: 16
                                            ),
                                            controller: myScore,

                                          ),
                                          // color: Colors.pink,
                                          margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                          height: 30,
                                          width: 26,

                                        ),
                                        flex: 1,
                                      ),

                                      Text(":"),

                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            textAlign: TextAlign.center,
                                            // obscureText: true,
                                            style: TextStyle(
                                                fontSize: 16
                                            ),
                                            controller: opScore,

                                          ),
                                          // color: Colors.pink,
                                          margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                          height: 30,
                                          width: 26,

                                        ),
                                        flex: 1,
                                      )
                                    ],
                                  ),
                                  flex: 4,
                                ),
                              ],
                            ),

                            //Tie break
                            Row(
                              children: [
                                RecordAddTitle(title: "Tie break"),

                                Flexible(
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            // autofocus: true,
                                            textAlign: TextAlign.center,
                                            // obscureText: true,
                                            style: TextStyle(
                                                fontSize: 16
                                            ),
                                            controller: myTieBreak,

                                          ),
                                          margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                          height: 30,
                                          width: 26,

                                        ),
                                        flex: 1,
                                      ),

                                      Text(":"),

                                      Flexible(
                                        child: Container(
                                          child: TextField(
                                            // autofocus: true,
                                            textAlign: TextAlign.center,
                                            // obscureText: true,
                                            style: TextStyle(
                                                fontSize: 16,
                                            ),
                                            controller: opTieBreak,

                                          ),
                                          // color: Colors.pink,
                                          margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                          height: 30,
                                          width: 26,

                                        ),
                                        flex: 1,
                                      )
                                    ],
                                  ),
                                  flex: 4,
                                ),
                              ],
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                        // color: Colors.yellow,
                        padding: EdgeInsets.only(top: 20, right: 24, left: 24),
                      ),
                    ),
                    flex: 1
                ),

                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: BUTTON_LIGHT_GREEN_COLOR,
                    ),
                    onPressed: () async{

                      GlobalVar.db.insert(
                          DbRecordModel.NAME,
                          DbRecordModel(
                            nickname: "Ratataca",
                            mode: this.isDouble ? "double" : "single",
                            date: RankersTime(selectedDate).printRankersTimeFormat(),
                            place: placeInput.text,
                            partner1: myPartner1.text,
                            partner2: myPartner2.text,
                            opponent1: opponent1.text,
                            opponent2: opponent2.text,
                            myScore: int.parse(myScore.text),
                            opScore: int.parse(opScore.text),
                            myTiebreak: int.parse(myTieBreak.text),
                            opTiebreak: int.parse(opTieBreak.text),
                            isCertification: 0,
                            isCompetition:0,
                            competitionTitle: "",
                          )
                      );

                      print(placeInput.text);
                      print(RankersTime(selectedDate).printRankersTimeFormat());
                      print(myPartner1.text);
                      print(myPartner2.text);
                      print(opponent1.text);
                      print(opponent2.text);

                      print(myScore.text);
                      print(opScore.text);
                      print(myTieBreak.text);

                      print(await GlobalVar.db.defaultSelect(DbRecordModel.NAME, DbRecordModel.GET_INFO));
                      
                      Navigator.pop(context);
                      // recordListPrint();

                    },
                    child: const Text(
                      '입력완료',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // margin: EdgeInsets.only(top: 190, bottom: 40),
                  width: double.infinity,
                  height: 60,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )
          ),
        )
    );
  }
}
