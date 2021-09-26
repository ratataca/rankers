

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tennis_game_management/resources/colors.dart';

class TeamUnorganized extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => TeamUnorganizedState();

}

class TeamUnorganizedState extends State<TeamUnorganized>{
  TextEditingController newPlayerName = TextEditingController();
  var numberInputFormatters= [new FilteringTextInputFormatter.allow(RegExp("[0-9]")),];

  showAlertDialog() async {
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
                      controller: newPlayerName,
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
    return GestureDetector(
      onTap: (){
        showAlertDialog();
      },
      child: Container(
        child: Text(
          "미편성",
          style: TextStyle(
            color: FREE_BOARD_LIGHT_GREEN_COLOR,
            fontSize: 12,

          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(
                width: 0.8,
                color: FREE_BOARD_LIGHT_GREEN_COLOR
            )
        ),
        alignment: Alignment.center,
      ),
    );
  }

}

//
// class TeamUnorganized extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: (){
//
//       },
//       child: Container(
//         child: Text(
//           "미편성",
//           style: TextStyle(
//             color: Colors.blue,
//             fontSize: 12,
//
//           ),
//         ),
//
//         // color: Colors.redAccent,
//       ),
//       style: OutlinedButton.styleFrom(
//         side: BorderSide(width: 0.6, color: Colors.blue),
//       ),
//     );
//   }
//
// }