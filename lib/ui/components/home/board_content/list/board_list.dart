import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/home/board_content/list_item/board_list_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';

class BoardList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Container(
          // Components
          child: Column(
            children: [
              HorizontalDivider(),

              BoardListItem(category: "공지", title: "버전 1.4 업데이트 공지", time: "2021. 09. 20",
                  // bgColor: BACKGROUND_LIGHT_RED_COLOR
              ),

              BoardListItem(category: "대회", title: "6월 대회 일정 공지", time: "2021. 09. 23",
                  // bgColor: SUB_BACKGROUND_LIGHT_GREEN_COLOR
              ),

              BoardListItem(category: "자유", title: "우리 모두 에티켓을 지킵시다.", time: "2021. 09. 26",
                  // bgColor: BACKGROUND_LIGHT_BLUE_COLOR
              ),
            ],
          ),

          // Styling
          // padding: EdgeInsets.only(left: 12, right: 12),
          padding: EdgeInsets.only(bottom: 20),
          // width: double.infinity,
          // color: Colors.white,
        ),
      ],
    );
  }
}
