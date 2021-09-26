import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";


import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/components/board/unit/divider/ranking_divider.dart';
import 'package:tennis_game_management/ui/components/board/unit/icon/button/board_chat_icon_button.dart';
import 'package:tennis_game_management/ui/components/board/unit/icon/button/board_good_icon_button.dart';
import 'package:tennis_game_management/ui/components/board/unit/icon/static/board_chat_icon.dart';
import 'package:tennis_game_management/ui/components/board/unit/icon/static/board_good_icon.dart';
import 'package:tennis_game_management/ui/components/board/unit/icon/static/board_img_icon.dart';
import 'package:tennis_game_management/ui/components/board/unit/outline_category/free_board_outline.dart';
import 'package:tennis_game_management/ui/components/board/unit/text/board_content.dart';
import 'package:tennis_game_management/ui/components/board/unit/text/board_title.dart';
import 'package:tennis_game_management/ui/components/board/unit/text/upload_time_text.dart';

class FreeBoardListItem extends StatelessWidget {
  String category="";
  String title="";
  String content="";
  String time="";
  int goodCnt=0;
  int chatCnt=0;
  bool isFolder=false;


  FreeBoardListItem({String category="", String title="", String content="", String time="", int goodCnt=0, int chatCnt=0, bool isFolder=false})
  {
    this.category = category;
    this.title = title;
    this.content = content;
    this.time = time;
    this.goodCnt = goodCnt;
    this.chatCnt = chatCnt;
    this.isFolder=isFolder;
  }

  @override
  Widget build(BuildContext context) {

    // 승패 태그, vs, 경기결과(승패, 경기날짜)
    return Container(
      child: Column(
        children: [
          // 1. 전체 카테고리 설정하기
          FreeBoardOutline(category=this.category),

          // 2. 타이틀
          Container( child: BoardTitle(title: this.title), padding: EdgeInsets.only(bottom: 6, top: 10),),

          // 3. 내용
          Container(child: BoardContent(content: this.content),margin: EdgeInsets.only(right: 10, bottom: 8,),),


          // 4. 좋아요, 채팅, 시간
          Container(
            child: Row(
              children: [
                // 4. 1. 좋이요, 시간
                Row(
                  children: [
                    BoardGoodIcon(goodCnt: this.goodCnt,),
                    BoardChatIcon(chatCnt: this.chatCnt,),
                    if (this.isFolder) BoardImgIcon() else Container(),
                  ],
                ),

                // 4. 2. 시간
                UploadTimeText(time: this.time),

              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
            ),
            padding: EdgeInsets.only(top: 4, bottom: 8, right: 2, left: 2),
          ),

          BoardDivider(),

          // 5. 버튼으로 이루어진 공감하기, 댓글쓰기
          Container(
            child: Row(
              children: [BoardChatIconButton(), BoardGoodIconButton(),],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            margin: EdgeInsets.only(top:4, bottom: 4),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      margin: EdgeInsets.only(left: 0, right: 0, top: 4, bottom: 4),
      padding: EdgeInsets.only(top: 4, bottom: 0, left: 10, right: 10,),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: BACKGROUND_GRAY_COLOR, //                   <--- border color
          width: 0.4,
        ),
        color: Colors.white,
      ),
    );
  }
}
