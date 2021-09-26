
import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class BoardChatIcon extends StatelessWidget {

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
                Icons.chat_bubble_outline,
                color: BACKGROUND_BLUE_COLOR,
                size: 14
            ),
          ),

          Container(
            child: Text(
              this.chatCnt.toString(),
              style: TextStyle(
                color: FONT_GRAY_COLOR,
                  fontSize: 12
              ),
            ),
            padding: EdgeInsets.only(left: 2, right: 4),
          )
        ],
      ),
      // width: double.infinity,
      // height: 0.3,
      // margin: EdgeInsets.only(left: 4, right: 4),
      // color: Color.fromARGB(255, 200, 200, 200),
    );
  }
}


