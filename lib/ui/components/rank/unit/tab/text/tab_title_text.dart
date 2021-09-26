import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class TabTitleText extends StatelessWidget {
  String title = "";
  bool isFocused = false;
  Function? onWhichTabClicked;

  TabTitleText({String title = "", String selectedTitle = "", onWhichTabClicked, }){
    // this.isClick = isClick;
    this.title = title;
    this.isFocused = title == selectedTitle ? true : false;
    this.onWhichTabClicked = onWhichTabClicked;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("RankAreaTitleText");
        this.onWhichTabClicked!(this.title);
      },
      child: Container(
          child: Text(
              this.title,

              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isFocused ? FONT_BLACK_COLOR : FONT_GRAY_COLOR,
              )
          ),
          // color: Colors.red,
          padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8)

      ),
    );
  }
}
