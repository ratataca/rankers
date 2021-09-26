import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/board/unit/tab/text/tab_title_text.dart';


class TabControlContent extends StatelessWidget {
  String selectedTitle = "";
  Function? onWhichTabClicked;

  TabControlContent({selectedTitle: "", onWhichTabClicked}){
    this.selectedTitle = selectedTitle;
    this.onWhichTabClicked = onWhichTabClicked;

    print(selectedTitle);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [

          TabTitleText(
            title: "자유게시판",
            selectedTitle: this.selectedTitle,
            onWhichTabClicked:this.onWhichTabClicked,
          ),

          TabTitleText(
            title: "공지게시판",
            selectedTitle: this.selectedTitle,
            onWhichTabClicked:this.onWhichTabClicked,
          ),
        ],

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      margin: EdgeInsets.only(bottom: 10, left: 12),

    );
  }
}
