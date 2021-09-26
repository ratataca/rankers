import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/board/free_board/free_board_body.dart';
import 'package:tennis_game_management/ui/components/board/notice_board/notice_board_body.dart';
import 'package:tennis_game_management/ui/components/board/unit/tab/tab_control_content.dart';
import 'package:tennis_game_management/ui/components/unit/empty_place/empty_place.dart';
import 'package:tennis_game_management/resources/colors.dart';

class BoardArea extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BoardAreaState();
}

class BoardAreaState extends State<BoardArea>{
  String selectedTitle = "자유게시판";
  int pageIdx = 0;
  bool isOpeningBtnVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: [
            Column(
              children: [

                // 1. 게시판 영역 중 Tab
                TabControlContent(
                    selectedTitle: this.selectedTitle,
                    onWhichTabClicked: onWhichTabClicked
                ),

                 // 2. tab 내용에 따라 변경되는 body
                Flexible(
                  child: onTabChange(),
                  flex: 1,
                ),

              ],
            ),
            Positioned(
              bottom: 20,
              right: 15,
              child: Container(
                  child: isOpeningBtnVisible ? FloatingActionButton(
                    child: Icon(
                      Icons.create,
                      size: 28,
                      color: Colors.white,
                    ),

                    onPressed: () => {
                      print(">> free board new!!")
                    },
                    backgroundColor: BUTTON_GREEN_COLOR,
                  ) : null
              ),
            )
          ],
        )


    );
  }
  // F: 선택된 버튼이 무엇인지 찾아내기
  onWhichTabClicked(String selectedTitle){
    print("Warning | play_area.dart | onWhichTabClicked");
    setState((){ this.selectedTitle = selectedTitle; });

    // print(this.selectedTitle);
  }

  // F: 참여대회/추천대회/경기전적 버튼 클릭시 해당 화면 뿌리기
  onTabChange(){
    setState(() { isOpeningBtnVisible = false; });
    switch (this.selectedTitle){
      // 2. 자유게시판 body
      case "자유게시판":
        this.pageIdx = 0;
        this.isOpeningBtnVisible = true;
        return FreeBoardBody();

      // 3. 공지게시판 body
      case "공지게시판":
        this.pageIdx = 1;
        return NoticeBoardBody();

      default:
        this.pageIdx = 0;
        return FreeBoardBody();

    }
  }
}