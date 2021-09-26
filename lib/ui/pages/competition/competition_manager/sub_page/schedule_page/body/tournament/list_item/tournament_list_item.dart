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
  int round=0;
  

  TournamentListItemState({int idx=0,}){
    this.idx=idx+1;
    this.round = (this.idx/2+0.5).toInt();

  }


  TextEditingController player = TextEditingController(text: "0");
  TextEditingController leagueRank = TextEditingController(text: "1");
  var numberInputFormatters= [new FilteringTextInputFormatter.allow(RegExp("[0-9]")),];

  //region popup
  showAlertDialog(int category, TextEditingController controllerData) async {
    Widget okButton = TextButton(
      child: Text("OK"), onPressed: () {
      Navigator.pop(context);
      setState(() {
        controllerData;
      });
    },
    );

    AlertDialog alert = await AlertDialog(
      title: Text(category == 0? "리그 소속" : "리그 순위", style: TextStyle(fontSize: 18),),

      content:  SafeArea(
        child: Container(
          // color: Colors.greenAccent,
          child: Column(
            children: [

              // Text("메이식스-장경식"),
              // SizedBox(height: 16,),
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
                    // color: Colors.redAccent,
                  ),
                  SizedBox(width: 16,),
                  Text("조"),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
          height: 30,
          // color: Colors.amber,

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
  //endregion

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
                child: Text(this.round.toString()),
                padding: EdgeInsets.only(left: 16),
                alignment: Alignment.center,
                // color: Colors.greenAccent,
                width: 60,
              ),

              Expanded(
                flex: 4,
                child: GestureDetector(
                  onTap: (){
                    showAlertDialog(0, player);

                  },
                  child: Container(
                    child: Text(
                      player.text+" 조",
                      overflow: TextOverflow.ellipsis,
                    ),  // 또는 사람 이름


                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    color: Colors.transparent,
                    // color: Colors.greenAccent,
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: (){

                    setState(() {
                      showAlertDialog(1, leagueRank);
                    });

                  },
                  child: Container(
                    child: Text(
                        leagueRank.text+" 등",
                    ),    // 또는 사람 이름 없어짐
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