import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';

class TournamentListItem extends StatefulWidget{
  int idx=0;
  TournamentListItem({int idx=0,}){
    this.idx=idx;
  }

  @override
  State<StatefulWidget> createState() => TournamentListItemState(idx: this.idx);
}

class TournamentListItemState extends State<TournamentListItem>{
  int idx=0;

  TournamentListItemState({int idx=0,}){
    this.idx=idx +100;
  }


  TextEditingController player = TextEditingController();
  TextEditingController leagueRank = TextEditingController();
  var numberInputFormatters= [new FilteringTextInputFormatter.allow(RegExp("[0-9]")),];

  showAlertDialog(TextEditingController controllerData) async {
    Widget okButton = TextButton(
      child: Text("OK"), onPressed: () {
      Navigator.pop(context);
    },
    );

    AlertDialog alert = await AlertDialog(
      title: Text("조편성", style: TextStyle(fontSize: 18),),

      content:  SafeArea(
        child: Container(
          // color: Colors.greenAccent,
          child: Column(
            children: [

              Text("메이식스-장경식"),
              SizedBox(height: 16,),
              Row(
                children: [

                  Container(
                    child: TextField(
                      controller: controllerData,
                      inputFormatters: numberInputFormatters,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 8),
                        hintText: "1",
                      ),

                    ),
                    width: 60,
                    height: 30,
                    margin: EdgeInsets.only(bottom: 10),
                    // color: Colors.redAccent,
                  ),
                  SizedBox(width: 16,),
                  Text("조"),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
          height: 80,
        ),
      ),

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



  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Container(
          child: Row(
            children: [

              Container(
                child: Text(this.idx.toString()),
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 16),
                // color: Colors.greenAccent,
                width: 50,
              ),

              Container(
                child: Text("1024"),
                padding: EdgeInsets.only(left: 16),
                alignment: Alignment.center,
                // color: Colors.greenAccent,
                width: 60,
              ),

              Expanded(
                flex: 6,
                child: GestureDetector(
                  onTap: (){
                    print("조조");

                  },
                  child: Container(
                    child: Text(
                      "3"+" 조",
                      overflow: TextOverflow.ellipsis,
                    ),  // 또는 사람 이름
                    // child: Text(
                    //   "라효진-ratataca-ratataca-ratataca",
                    //   overflow: TextOverflow.ellipsis,
                    // ),  // 또는 사람 이름

                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 16),
                    color: Colors.transparent,
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: (){
                    print("순순");

                  },
                  child: Container(
                    child: Text("2"),    // 또는 사람 이름 없어짐
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(left: 16),
                    margin: EdgeInsets.only(right: 20),
                    color: Colors.transparent,
                    // color: Colors.greenAccent,
                  ),
                ),
              ),
            ],
          ),
          width: double.infinity,
          height: 50,
        ),
        HorizontalDivider(),
      ],
    );
  }
}