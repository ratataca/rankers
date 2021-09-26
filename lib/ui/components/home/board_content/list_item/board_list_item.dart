import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/components/unit/text/time_text.dart';


class BoardListItem extends StatelessWidget {
  Color bgColor = Colors.transparent;
  String category = "";
  String title = "";
  String time = "";

  BoardListItem({Color bgColor=Colors.transparent, String category="", String title="", String time=""}){
    this.bgColor = bgColor;
    this.category = category;
    this.title = title;
    this.time = time;

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [


              //1 공지사항 카테고리 /  타이틀
              Row(
                children: [
                  Container(
                    child: Text(
                      this.category,

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 20, right: 0, bottom: 3),
                  ),

                  Container(
                      child: Text(
                        this.title,

                        overflow: TextOverflow.ellipsis,
                      ),

                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 18, right: 8)
                  ),
                ],
              ),
              Container(
                child: Container(
                  child: Text(
                    this.time,
                    style: TextStyle(
                        color: FONT_DEFUALT_GRAY_COLOR,
                        fontSize: 12
                    ),
                  ),

                  // width: 50,
                  alignment: Alignment.centerRight,
                ),
                margin: EdgeInsets.only(right: 8), width: 80,
              ),

            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          height: 44,
          padding: EdgeInsets.only(top: 4,bottom: 4, left: 8, right: 12),

        ),
        HorizontalDivider(),
      ],
    );
  }
}
