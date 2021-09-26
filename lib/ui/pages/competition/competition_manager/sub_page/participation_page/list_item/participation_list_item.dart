import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';

class ParticipationListItem extends StatelessWidget {
  String idx = "";
  String name = "";
  int rank=0;
  TextEditingController newPlayerName = TextEditingController();

  ParticipationListItem({int idx=0, String name="", int rank=0}){
    this.idx=(idx+1).toString();
    this.name=name;
    this.rank=rank;
  }


  @override
  Widget build(BuildContext context) {

    showAlertDialog() async {
      Widget okButton = TextButton(
        child: Text("OK"), onPressed: () {
        Navigator.pop(context);
      },
      );

      AlertDialog alert = await AlertDialog(
        title: Text("참가자 편집", style: TextStyle(fontSize: 18),),

        content:  Row(
          children: [
            Text("이름"),
            SizedBox(width: 12,),
            Flexible(
              child: TextField(
                controller: newPlayerName,
                decoration: InputDecoration(
                ),
              ),
              flex: 1,
            ),
          ],
        ),

        actions: [okButton,],
      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      secondaryActions: [
        IconSlideAction(
            // caption: '편집',
            color: FONT_BLUE_COLOR,
            foregroundColor: Colors.white,
            icon: Icons.edit_outlined,
            onTap: (){
              showAlertDialog();
            }
        ),

        IconSlideAction(
            color: FONT_RED_COLOR,
            icon: Icons.delete_outline_outlined,
            onTap: (){
            }
        ),

      ],
      actionExtentRatio: 1 / 7,


      child: Container(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child:  Text(
                      this.idx,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    alignment: Alignment.center,
                    width: 46,
                  ),

                  Container(
                    child: Text(
                      this.name,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    margin: EdgeInsets.only(top: 2),
                  ),

                  Flexible(
                    child: Container(
                      child: Text(
                        this.rank.toString(),
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: FREE_BOARD_LIGHT_GREEN_COLOR
                        ),
                      ),
                      alignment: Alignment.centerRight,
                      width: double.infinity,
                      margin: EdgeInsets.only(right: 8),
                    ),
                    flex: 1,
                  ),

                ],
              ),
              margin: EdgeInsets.only(bottom: 14, top: 14),
            ),
            HorizontalDivider(),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        width: double.infinity,
        color: Colors.transparent,
      ),
    );
  }

}


