
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/resources/colors.dart';

class ManagerButtonListItem extends StatelessWidget{
  String title="";
  bool isDone = false;
  bool isDoing = false;
  dynamic data;


  //  0 0 -> 미래할 것
  //  0 1 -> 지금하는 것

  //  1 1 -> 이미 종료된것
  //  1 0 -> 이미 종료된것

  ManagerButtonListItem({dynamic data, String title="", bool isDone=false, bool isDoing=false}){
      this.data = data;
      this.title = title;
      this.isDone = isDone;
      this.isDoing = isDoing;

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: (){
          
          switch(this.title){
            case "참가자 신청":
              Navigator.pushNamed(context, "/managerParticipation", arguments: data);
              break;
            case "대진표 작성":
              Navigator.pushNamed(context, "/competitionSchedule", arguments: data);
              break;
            case "대회 진행":
              Navigator.pushNamed(context, "/competitionDoing", arguments: data);
              break;
            case "대회 종료":
              Navigator.pushNamed(context, "/competitionFinish", arguments: data);
              break;
          }
        },
        child: Text(
          this.title,
          style: TextStyle(
            fontSize: 18,

          ),
        ),

        style: ElevatedButton.styleFrom(
          primary:isDone == false && isDoing == false ?
                        Color(0xdd19996e)
                          :
                          isDone == false && isDoing == true ?
                          BUTTON_GREEN_COLOR : FONT_GRAY_COLOR
          ,
          shadowColor: Colors.transparent,
        ),
      ),
      height: 54,
      width: 330,

      margin: EdgeInsets.only(bottom: 20),
    );
  }

}

// class ManagerButtonListItem extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() => ManagerButtonListItemState();
//
// }
//
// class ManagerButtonListItemState extends State<ManagerButtonListItem>{
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ElevatedButton(
//         onPressed: (){
//
//         },
//         child: Text(
//           "참가자 신청",
//           style: TextStyle(
//               fontSize: 18
//           ),
//         ),
//       ),
//       height: 46,
//       width: 260,
//     );
//   }
// }