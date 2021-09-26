
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class BoardFolderIcon extends StatelessWidget {

  int chatCnt = 0;

  BoardChatIcon({int chatCnt=0}){
    this.chatCnt = chatCnt;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          //comment_rounded
          Container(
            child: Icon(
                // Icons.folder_outlined,
                Icons.attach_file_outlined ,
                // Icons.image_outlined ,
                color: FONT_DARK_GREEN_COLOR,
                size: 14
            ),
          ),

          // Container(
          //   child: Text(
          //     this.chatCnt.toString(),
          //     style: TextStyle(
          //       color: FONT_GRAY_COLOR,
          //         fontSize: 12
          //     ),
          //   ),
          //   padding: EdgeInsets.only(left: 2, right: 6),
          // )
        ],
      ),
      // width: double.infinity,
      // height: 0.3,
      margin: EdgeInsets.only(bottom: 1),
      // color: Color.fromARGB(255, 200, 200, 200),
    );
  }
}


