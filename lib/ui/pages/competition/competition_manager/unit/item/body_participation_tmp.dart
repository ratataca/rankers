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
  TextEditingController newPlayerName = TextEditingController();

  BodyParticipationState(dynamic data){
    this.data=data;
  }

  showAlertDialog() async {
    Widget okButton = TextButton(
      child: Text("OK"), onPressed: () {
        Navigator.pop(context);
        },
    );

    AlertDialog alert = await AlertDialog(
        title: Text("참가자 추가", style: TextStyle(fontSize: 18),),

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

        // Container(
        //   child: Row(
        //     children: [
        //       CompetitionListTitle(title: "주최자",),
        //     ],
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //   ),
        //   margin: EdgeInsets.only(bottom: 10, top: 20),
        // ),

        // Container(
        //   child: Row(
        //     children: [
        //       SizedBox(width: 14),
        //       // 이미지
        //       Container(
        //         margin: new EdgeInsets.only(right: 16),
        //         child:  GestureDetector(
        //           onTap: ()  {
        //             // Todo - 내 계정이면 세팅의 마이페이지, 아니면 조횐
        //             // Navigator.pushNamed(context, '/setting');
        //           },
        //           child: ClipRRect(
        //             borderRadius: new BorderRadius.circular(50.0),
        //             // TODO- 이미지 압축을 하여 정사각형으로 만들기
        //             child:CircleAvatar( backgroundImage: AssetImage("assets/img/my_img.jpg"), radius: 60.0, ),
        //
        //           ),
        //         ),
        //         height: 40,
        //         width: 40,
        //         color: Colors.transparent,
        //
        //       ),
        //
        //       Container(
        //           child: Text(
        //             this.data['nickname'],
        //             style: TextStyle(
        //               fontSize: 16,
        //             ),
        //           ),
        //         margin: EdgeInsets.only(top: 4),
        //       )
        //
        //     ],
        //   ),
        // ),

        Container(
          child: Row(
            children: [
              CompetitionListTitle(title: "참여인원",),

              ParticipationIcon(title: "32 /100", size: 10,),
              Spacer(flex: 3),
              Container(
                child: TextButton.icon(
                  onPressed: () {
                    showAlertDialog();
                  },
                  icon: Icon(Icons.add, size: 14, color: FREE_BOARD_LIGHT_GREEN_COLOR, ),
                  label: Text("추가", style: TextStyle(fontSize: 14, color: FREE_BOARD_LIGHT_GREEN_COLOR,),),
                ),
                height: 36,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
          height: 40,
          margin: EdgeInsets.only(bottom: 10, top: 20),
        ),

        Container(
          child: ParticipationList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]),
          // color: Colors.redAccent,
        )

      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

}


