import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/pages/competition/competition_manager/sub_page/schedule_page/unit/tab/text/tab_title_text.dart';


class TabControlContent extends StatelessWidget {
  String selectedTitle = "";
  Function? onWhichTabClicked;

  TabControlContent({selectedTitle: "", onWhichTabClicked}){
    this.selectedTitle = selectedTitle;
    this.onWhichTabClicked = onWhichTabClicked;

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          TabTitleText(
            title: "예선경기",
            selectedTitle: this.selectedTitle,
            onWhichTabClicked:this.onWhichTabClicked,
          ),

          TabTitleText(
            title: "본선경기",
            selectedTitle: this.selectedTitle,
            onWhichTabClicked:this.onWhichTabClicked,
          )

        ],
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      margin: EdgeInsets.only(left: 12, bottom: 16),
    );
  }
}
