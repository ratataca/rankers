import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';


class LocalAreaContent extends StatefulWidget {
  String title="";
  int idx=0;
  dynamic fuc;

  LocalAreaContent(String title, int idx, dynamic fuc){
    this.title = title;
    this.idx = idx;
    this.fuc = fuc;
  }

  @override
  State<StatefulWidget> createState() => LocalAreaContentState(this.title, this.idx, this.fuc);
}

class LocalAreaContentState extends State<LocalAreaContent>{
  String title="";
  int idx=0;
  dynamic fuc;

  bool isClick = false;

  LocalAreaContentState(String title, int idx, dynamic fuc){
    this.title = title;
    this.idx = idx;
    this.fuc = fuc;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("isClick!!");
        print(title + this.idx.toString());

        setState(() {
          isClick = this.fuc(this.idx);
        });


      },
      child: Container(
        child: Column(
          children: [
            Text(
              this.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        width: 110,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(color: FONT_GRAY_COLOR),
            color: isClick ? SUB_BACKGROUND_LIGHT_GREEN_COLOR : Colors.transparent,
        ),
        alignment: Alignment.center,

      ),
    );
  }
}


// class LocalAreaContent extends StatelessWidget {
//   String title="";
//   String subTitle="";
//
//   LocalAreaContent({String title="", String subTitle=""}){
//     this.title = title;
//     this.subTitle = subTitle;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return  GestureDetector(
//       onTap: (){
//         print("cilck!"+ this.title);
//       },
//       child: Container(
//         child: Column(
//           children: [
//             Text(
//               this.title,
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18
//               ),
//             ),
//           ],
//           mainAxisAlignment: MainAxisAlignment.center,
//         ),
//         width: 110,
//         height: 70,
//         decoration: BoxDecoration(
//             border: Border.all(color: FONT_GRAY_COLOR)
//         ),
//         alignment: Alignment.center,
//       ),
//     );
//   }
// }

