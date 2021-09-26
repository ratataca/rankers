import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class BoardChatIconButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          //comment_rounded
          Container(
            child: Icon(
                Icons.chat_bubble_outline_rounded ,
                color: FONT_DEFUALT_GRAY_COLOR,
                size: 16,

            ),
          ),

          Container(
            child: Text(
              "댓글쓰기",
              style: TextStyle(
                color: FONT_DEFUALT_GRAY_COLOR,
                  fontSize: 12
              ),
            ),
            padding: EdgeInsets.only(bottom: 3, right: 3, left: 3),

          )
        ],
      ),
      // width: double.infinity,
      // height: 0.3,
      padding: EdgeInsets.only(left: 6, right: 6, top: 6, bottom: 4),

      // color: Colors.greenAccent,
    );
  }
}


