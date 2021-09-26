import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/core/db/model/db_competition_model.dart';
import 'package:tennis_game_management/core/db/model/rankers_time.dart';
import 'package:tennis_game_management/global_variables.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_not_index.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/ui/pages/competition/new_competiton_page/unit/title/new_competition_title.dart';

import 'unit/choice/mode_choice.dart';
import 'unit/choice/tie_break_choice.dart';
import 'unit/cupertino/cupertino_header.dart';
import 'unit/cupertino/cupertino_item.dart';
import 'unit/cupertino/cupertino_text.dart';
import 'unit/input/add_input.dart';
import 'unit/input/add_input_etc.dart';
import 'unit/input/add_input_round.dart';
import 'unit/title/new_competition_title_detail.dart';

class NewCompetitionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewCompetitionPageState();
}

@override
class NewCompetitionPageState extends State<NewCompetitionPage> {

  //region - 동점처리 관련 변수
  int FRuleSelected = 0;
  int SRuleSelected = 1;
  int TRuleSelected = 2;

  static const int RULE_SS_1 = 0;
  static const int RULE_SS_2 = 1;
  static const int RULE_SS_3 = 2;
  static const int RULE_SS_4 = 3;

  final RULES = {
    RULE_SS_1: "승자승",
    RULE_SS_2: "게임 득실",
    RULE_SS_3: "연장자",
    RULE_SS_4: "추첨",
  };

  String dateErrorText="대회날짜가 형식에 맞지 않습니다.";
  String ruleErrorText="동점처리 기준이 중복되었습니다.";
  //endregion

  //region - 예선 및 본선방식 관련 변수
  int FROUND1Selected = 0;
  int SROUND1Selected = 1;
  int TROUND1Selected = 2;

  static const int ROUND1_1 = 0;
  static const int ROUND1_2 = 1;
  static const int ROUND1_3 = 2;

  final ROUND1 = {
    ROUND1_1 : "리그",
    ROUND1_2 : "토너먼트",
    ROUND1_3 : "없읍",
  };

  int FROUND2Selected = 0;
  int SROUND2Selected = 1;
  int TROUND2Selected = 2;

  static const int ROUND2_1 = 0;
  static const int ROUND2_2 = 1;
  static const int ROUND2_3 = 2;

  final ROUND2 = {
    ROUND2_1 : "토너먼트",
    ROUND2_2 : "리그",
    ROUND2_3 : "없읍",
  };
  // endregion


  bool isDouble=true;
  bool isFiveFive=true;

  final cptName = TextEditingController(text: "제 3회 천안시민 테니스 경기");
  final cpRound1 = TextEditingController();
  final cpRound2 = TextEditingController();
  String uploadDate = "";

  final cptPlace = TextEditingController(text: "한국기술교육대학교");
  final cptParticipationCnt = TextEditingController(text: "100");
  final cptEtc = TextEditingController(text: "");

  @override
  initState() {
    super.initState();
    uploadDate = RankersTime(DateTime.now()).printRankersTimeFormat();
  }

  updateSelectRule(int idx){
    if(idx != null)
      return RULES[idx].toString();
    idx = 0;
    return RULES[idx].toString();

  }

  updateSelectGound(int idx, dynamic gound){
    if(idx != null)
      return gound[idx].toString();
    idx = 0;
    return gound[idx].toString();
  }


  // region 입력 데이터 오류(날짜, )
  isDateDifferent(){
    // TODO 지우기
    return false;

    // if(RankersTime(data_join_start).stringDate2int() > RankersTime(data_join_end).stringDate2int()){
    //   return true;
    // }
    // if(RankersTime(date_competition_start).stringDate2int() > RankersTime(date_competition_end).stringDate2int()){
    //   return true;
    // }
    // if(RankersTime(data_join_end).stringDate2int()+1 >= RankersTime(date_competition_start).stringDate2int())){
    //   return true;
    // }
    // return false;
  }

  isRuleDiffernet(){

    if(FRuleSelected == SRuleSelected){
      return true;
    }
    if(FRuleSelected == TRuleSelected){
      return true;
    }
    if(SRuleSelected == TRuleSelected){
      return true;
    }
    return false;
  }


  showAlertDialog(BuildContext context, String errorText) async {
    // set up the button
    Widget okButton = TextButton(child: Text("OK"), onPressed: () {Navigator.pop(context);},);

    AlertDialog alert = await AlertDialog(
      title: Text("입력 데이터 오류", style: TextStyle(fontSize: 18),),

      content: Text(errorText, style: TextStyle(fontSize: 16,),),

      actions: [okButton,],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  // endregion

  // region - 단복식 포인터 함수
  selectDouble(){
    isDouble = true;
  }
  selectSingle(){
    isDouble = false;
  }
  // endregion

  // region - 시간 타이머를 위한 함
  static const int DATE_JOIN_START = 1;
  static const int DATE_JOIN_END = 2;
  static const int DATE_COMPETITION_START = 11;
  static const int DATE_COMPETITION_END = 12;

  DateTime data_join_start = DateTime.now();
  DateTime data_join_end = DateTime.now();
  DateTime date_competition_start = DateTime.now();
  DateTime date_competition_end = DateTime.now();

  bool _decideWhichDayToEnable(DateTime day) {
    // if (day.isAfter(DateTime.now())
    // // && day.isBefore(DateTime.now().day)
    // ){
    //   print(day.isAfter(DateTime.now()));
    //   return false;
    // }
    return true;
  }

  _selectDate(BuildContext context, DateTime selectedDate, int type) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2019),
      lastDate: DateTime(2030),
      helpText: "",
      errorFormatText: '유효한 날짜를 입력하세요',
      errorInvalidText: '유효한 범위에 날짜를 입력하세요',
      // initialDatePickerMode: DatePickerMode.year,

      selectableDayPredicate: _decideWhichDayToEnable,
    );
    if (picked != null && picked != selectedDate)

      setState(() {
        
        switch (type) {
          case DATE_JOIN_START:
            data_join_start = picked;
            break;
          case DATE_JOIN_END:
            data_join_end = picked;
            break;
          case DATE_COMPETITION_START:
            date_competition_start = picked;
            break;

          case DATE_COMPETITION_END:
          default:
            date_competition_end = picked;
            break;
        }
      });
  }

  // endregion  함

  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: TgmAppBarNotIndex(title: "대회생성"),
          body: SafeArea(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Container(
                        child: Column(
                          children: [
                            AddInput("대회명", cptName, double.infinity, false),

                            ModeChoice(this.isDouble, selectDouble, selectSingle),

                            AddInput("최대인원", cptParticipationCnt, 46.0, true),

                            // region 예선방식
                            Row(
                              children: [
                                NewCompetitionTitleDetail(title: "예선방식", isColumn: true),

                                Flexible(
                                  child: Container(
                                    child: GestureDetector(
                                      child: Row(
                                        children: [
                                          CupertinoText(updateSelectGound(FROUND1Selected, ROUND1)),
                                          Spacer(flex: 1),
                                          AddInputRound(cpRound1, ROUND1, FROUND1Selected),
                                          Spacer(flex: 1),
                                        ],
                                      ),

                                      onTap: () async {

                                        var new_ruleSelect = await showCupertinoModalPopup(
                                          context: context,
                                          builder: (context) {
                                            return StatefulBuilder(builder:(BuildContext context, StateSetter setState) {
                                              return Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  // 취소, 확인 버튼
                                                  CupertinoHeader(FROUND1Selected),

                                                  // 아이템
                                                  Container(
                                                    child: CupertinoPicker(
                                                      children: [
                                                        CupertinoItem(ROUND1_1, ROUND1, FROUND1Selected),
                                                        CupertinoItem(ROUND1_2, ROUND1, FROUND1Selected),
                                                        CupertinoItem(ROUND1_3, ROUND1, FROUND1Selected),
                                                      ],
                                                      backgroundColor: Colors.white,
                                                      itemExtent: 40.0,
                                                      scrollController:FixedExtentScrollController(initialItem: FROUND1Selected ),
                                                      onSelectedItemChanged: (int index) {
                                                        setState(() {
                                                          FROUND1Selected = index;
                                                        });
                                                      },

                                                    ),
                                                    height: 180.0,
                                                  ),
                                                ],
                                              );
                                            });
                                          },
                                        );
                                        if(new_ruleSelect == null)
                                          new_ruleSelect = 0;

                                        setState(() => {FROUND1Selected = new_ruleSelect});

                                      },
                                    ),
                                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),

                                    // color:Colors.blue,
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                            // endregion

                            // region 본선방식
                            Row(
                              children: [
                                NewCompetitionTitleDetail(title: "본선방식", isColumn: true),


                                Flexible(
                                  child: Container(
                                    child: GestureDetector(
                                      child: Row(
                                        children: [
                                          CupertinoText(updateSelectGound(FROUND2Selected, ROUND2)),
                                          Spacer(flex: 1),
                                          AddInputRound(cpRound1, ROUND1, FROUND1Selected),
                                          Spacer(flex: 1),
                                        ],
                                      ),


                                      onTap: () async {

                                        var new_ruleSelect = await showCupertinoModalPopup(
                                          context: context,
                                          builder: (context) {
                                            return StatefulBuilder(builder:(BuildContext context, StateSetter setState) {
                                              return Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  // 취소, 확인 버튼
                                                  CupertinoHeader(FROUND2Selected),

                                                  // 아이템
                                                  Container(
                                                    child: CupertinoPicker(
                                                      children: [
                                                        CupertinoItem(ROUND2_1, ROUND2, FROUND2Selected),
                                                        CupertinoItem(ROUND2_2, ROUND2, FROUND2Selected),
                                                        CupertinoItem(ROUND2_3, ROUND2, FROUND2Selected),
                                                      ],
                                                      backgroundColor: Colors.white,
                                                      itemExtent: 40.0,
                                                      scrollController:FixedExtentScrollController(initialItem: FROUND2Selected ),
                                                      onSelectedItemChanged: (int index) {
                                                        setState(() {
                                                          FROUND2Selected = index;
                                                        });
                                                      },

                                                    ),
                                                    height: 180.0,
                                                  ),
                                                ],
                                              );
                                            });
                                          },
                                        );
                                        if(new_ruleSelect == null)
                                          new_ruleSelect = 0;

                                        setState(() => {FROUND2Selected = new_ruleSelect});
                                      },
                                    ),
                                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                    // height: 30, width: 160,
                                    // color:Colors.blue,
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                            // endregion

                            TieBreakChoice(),

                            //#region 기간 UI
                            Row(
                              children: [
                                NewCompetitionTitle(title: "신청기간"),
                                Flexible(
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          _selectDate(
                                              context, data_join_start, DATE_JOIN_START);
                                        },
                                        child: Container(
                                          child: Text(
                                            RankersTime(data_join_start).printRankersTimeFormat(),
                                          ),
                                          height: 50,
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(left: 10, right: 10),
                                        ),
                                      ),
                                      Text("~"),
                                      GestureDetector(
                                        onTap: () {
                                          _selectDate(
                                              context, data_join_end, DATE_JOIN_END);
                                        },
                                        child: Container(
                                          child: Text(
                                            RankersTime(data_join_end).printRankersTimeFormat(),
                                          ),
                                          height: 50,
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(left: 10),
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),

                            // 대회기간 UI
                            Row(
                              children: [
                                NewCompetitionTitle(title: "대회기간"),
                                Flexible(
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          _selectDate(context, date_competition_start,
                                              DATE_COMPETITION_START);
                                        },
                                        child: Container(
                                          child: Text(RankersTime(date_competition_start).printRankersTimeFormat(),),
                                          height: 50,
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(left: 10, right: 10),
                                        ),
                                      ),
                                      Text("~"),
                                      GestureDetector(
                                        onTap: () {
                                          _selectDate(context, date_competition_end,
                                              DATE_COMPETITION_END);
                                        },
                                        child: Container(
                                          child: Text(RankersTime(date_competition_end).printRankersTimeFormat(),),
                                          height: 50,
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(left: 10),
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                            //#endregion

                            AddInput("경기장소", cptPlace, double.infinity, false),

                            Row(children: [NewCompetitionTitle(title: "동점처리"),],),

                            //#region 순위
                            // 1순위
                            Row(
                              children: [
                                NewCompetitionTitleDetail(title: "1순위"),

                                Flexible(
                                  child: Container(
                                    child: GestureDetector(
                                      child: CupertinoText(updateSelectRule(FRuleSelected)),

                                      onTap: () async {

                                        var new_ruleSelect = await showCupertinoModalPopup(
                                          context: context,
                                          builder: (context) {
                                            return StatefulBuilder(builder:(BuildContext context, StateSetter setState) {
                                              return Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  // 취소, 확인 버튼
                                                  CupertinoHeader(FRuleSelected),

                                                  // 아이템
                                                  Container(
                                                    child: CupertinoPicker(
                                                      children: [
                                                        CupertinoItem(RULE_SS_1, RULES, FRuleSelected),
                                                        CupertinoItem(RULE_SS_2, RULES, FRuleSelected),
                                                        CupertinoItem(RULE_SS_3, RULES, FRuleSelected),
                                                        CupertinoItem(RULE_SS_4, RULES, FRuleSelected),
                                                      ],
                                                      backgroundColor: Colors.white,
                                                      itemExtent: 40.0,
                                                      scrollController:FixedExtentScrollController(initialItem: FRuleSelected ),
                                                      onSelectedItemChanged: (int index) {
                                                        setState(() {
                                                          FRuleSelected = index;
                                                        });
                                                      },

                                                    ),
                                                    height: 180.0,
                                                  ),
                                                ],
                                              );
                                            });
                                          },
                                        );
                                        if(new_ruleSelect == null)
                                          new_ruleSelect = 0;

                                        setState(() => {FRuleSelected = new_ruleSelect});
                                      },
                                    ),
                                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                    height: 30, width: 160,
                                    // color:Colors.blue,
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),

                            // 2순위
                            Row(
                              children: [
                                NewCompetitionTitleDetail(title: "2순위"),

                                Flexible(
                                  child: Container(
                                    child: GestureDetector(
                                      child: CupertinoText(updateSelectRule(SRuleSelected)),
                                      onTap: () async {
                                        var new_ruleSelect = await showCupertinoModalPopup(
                                          context: context,
                                          builder: (context) {
                                            return StatefulBuilder(builder:(BuildContext context, StateSetter setState) {
                                              return Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  // 취소, 확인 버튼
                                                  CupertinoHeader(SRuleSelected),

                                                  // 아이템
                                                  Container(
                                                    child: CupertinoPicker(
                                                      children: [
                                                        CupertinoItem(RULE_SS_1, RULES, SRuleSelected),
                                                        CupertinoItem(RULE_SS_2, RULES, SRuleSelected),
                                                        CupertinoItem(RULE_SS_3, RULES, SRuleSelected),
                                                        CupertinoItem(RULE_SS_4, RULES, SRuleSelected),
                                                      ],
                                                      backgroundColor: Colors.white,
                                                      itemExtent: 40.0,
                                                      scrollController:FixedExtentScrollController(initialItem: SRuleSelected),
                                                      onSelectedItemChanged: (int index) {
                                                        setState(() {
                                                          SRuleSelected = index;
                                                        });
                                                      },
                                                    ),
                                                    height: 180.0,
                                                  ),
                                                ],
                                              );
                                            });
                                          },
                                        );
                                        if(new_ruleSelect == null)
                                          new_ruleSelect = 1;
                                        setState(() => {SRuleSelected = new_ruleSelect});
                                      },
                                    ),
                                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                    height: 30, width: 160,
                                    // color:Colors.blue,
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),

                            // 3순위
                            Row(
                              children: [
                                NewCompetitionTitleDetail(title:"3순위"),

                                Flexible(
                                  child: Container(
                                    child: GestureDetector(
                                      child: CupertinoText(updateSelectRule(TRuleSelected)),
                                      onTap: () async {
                                        var new_ruleSelect = await showCupertinoModalPopup(
                                          context: context,
                                          builder: (context) {
                                            return StatefulBuilder(builder:(BuildContext context, StateSetter setState) {
                                              return Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  // 취소, 확인 버튼
                                                  CupertinoHeader(TRuleSelected),

                                                  // 아이템
                                                  Container(
                                                    child: CupertinoPicker(
                                                      children: [
                                                        CupertinoItem(RULE_SS_1, RULES, TRuleSelected),
                                                        CupertinoItem(RULE_SS_2, RULES, TRuleSelected),
                                                        CupertinoItem(RULE_SS_3, RULES, TRuleSelected),
                                                        CupertinoItem(RULE_SS_4, RULES, TRuleSelected),
                                                      ],
                                                      backgroundColor: Colors.white,
                                                      itemExtent: 40.0,
                                                      scrollController:FixedExtentScrollController(initialItem: TRuleSelected),
                                                      onSelectedItemChanged: (int index) {
                                                        setState(() {
                                                          TRuleSelected = index;

                                                        });
                                                      },
                                                    ),
                                                    height: 180.0,
                                                  ),
                                                ],
                                              );
                                            });
                                          },
                                        );
                                        if(new_ruleSelect == null)
                                          new_ruleSelect = 2;
                                        setState(() => {TRuleSelected = new_ruleSelect});
                                      },
                                    ),
                                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 4),
                                    height: 30, width: 130,
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                            //#endregion

                            AddInputEtc("기타사항", cptEtc),

                            EmptyPlace(),

                          ],
                        ),
                        padding: EdgeInsets.only(top: 20, right: 24, left: 24),
                      ),
                    ),
                  ),


                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: BUTTON_LIGHT_GREEN_COLOR,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () async {

                        // TODO - 조건 나중에 풀
                        // if(isDateDifferent()==true){
                        //   showAlertDialog(context, dateErrorText);
                        // }
                        //
                        // if(isRuleDiffernet()==true){
                        //    showAlertDialog(context, ruleErrorText);
                        // }


                        if(isDateDifferent()!=true && isRuleDiffernet()!=true){

                          GlobalVar.db.insert(
                              DbCompetitionModel.NAME,
                              DbCompetitionModel(
                                competitionId:"",
                                competitionName: cptName.text,
                                participationMaxNum: int.parse(cptParticipationCnt.text),
                                participationNum: 0,
                                mode: this.isDouble ? "double" : "single",
                                place: cptPlace.text,
                                uploadDate: uploadDate,
                                registrationDateStart: RankersTime(data_join_start).printRankersTimeFormat(),
                                registrationDateEnd: RankersTime(data_join_end).printRankersTimeFormat(),
                                competitionDateStart: RankersTime(date_competition_start).printRankersTimeFormat(),
                                competitionDateEnd: RankersTime(date_competition_end).printRankersTimeFormat(),
                                firstTieCondition: RULES[FRuleSelected].toString(),
                                secondTieCondition: RULES[SRuleSelected].toString(),
                                thirdTieCondition: RULES[TRuleSelected].toString(),
                                description: cptEtc.text,
                                writerId: "2a4ds9",
                                nickname: "ratataca",
                                state: "공고중",
                              )
                          );

                          print(cptName.text);
                          print(this.isDouble);
                          print(cptParticipationCnt.text);
                          print(data_join_start);
                          print(data_join_end);
                          print(date_competition_start);
                          print(date_competition_end);
                          print(cptPlace.text);
                          print(FRuleSelected);
                          print(SRuleSelected);
                          print(TRuleSelected);
                          print(cptEtc.text);

                          var tmp  = await GlobalVar.db.defaultSelect(DbCompetitionModel.NAME, DbCompetitionModel.GET_INFO);
                          print(tmp);
                          Navigator.pop(context);
                        }

                      },
                      child: Text(
                        "입력완료",
                        style: TextStyle(
                            fontSize:18
                        ),
                      ),
                    ),
                    height: 50, width: double.infinity,
                    margin: EdgeInsets.only(left: 16, right: 16),

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),

              // height: double.infinity,
            ),
          ),
        )
    );
  }
}
