import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/rank/unit/tab/text/tab_title_text.dart';

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
            title: "복식",
            selectedTitle: this.selectedTitle,
            onWhichTabClicked:this.onWhichTabClicked,
          ),

          TabTitleText(
            title: "단식",
            selectedTitle: this.selectedTitle,
            onWhichTabClicked:this.onWhichTabClicked,
          ),

          TabTitleText(
            title: "팀",
            selectedTitle: this.selectedTitle,
            onWhichTabClicked:this.onWhichTabClicked,
          ),

          TabTitleText(
            title: "내기록",
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
