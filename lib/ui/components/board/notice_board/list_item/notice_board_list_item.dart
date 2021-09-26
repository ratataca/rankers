
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/board/unit/icon/static/board_folder_icon.dart';
import 'package:tennis_game_management/ui/components/board/unit/text/board_content.dart';
import 'package:tennis_game_management/ui/components/board/unit/text/board_title.dart';
import 'package:tennis_game_management/ui/components/board/unit/text/upload_time_text.dart';

class NoticeBoardListItem extends StatelessWidget {
  String category="";
  String title="";
  String content="";
  String time="";
  bool isFolder=false;


  NoticeBoardListItem({String category="", String title="", String content="", String time="", bool isFolder=false})
  {
    this.category = category;
    this.title = title;
    this.content = content;
    this.time = time;
    this.isFolder=isFolder;
  }

  @override
  Widget build(BuildContext context) {

    // 공지사항
    return Container(
      child: Column(
        children: [
          // 1. 타이틀, 업로드 시간
          Container(
            child: Row(
              children: [
                Row(
                  children: [
                    
                    // 1. 1. 1. 타이틀
                    BoardTitle(title: this.title),

                    // 1. 1. 2. 파일 유무
                    Container(
                      child: this.isFolder ?  BoardFolderIcon() : Container(),
                      margin: EdgeInsets.only(left: 3, top: 3),
                    ),
                  ],
                ),

                // 1. 2.  업로드 시간
                UploadTimeText(time: this.time),

              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
            ),
            margin: EdgeInsets.only(top: 4, bottom: 6, right: 2, left: 2),
          ),

          // 2. 내용
          Container(
            child: BoardContent(content: this.content),

            margin: EdgeInsets.only(right: 10),
          ),

        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      margin: EdgeInsets.only(left: 0, right: 0, top: 4, bottom: 6),
      padding: EdgeInsets.only(top: 6, bottom: 6, left: 10, right: 10,),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
