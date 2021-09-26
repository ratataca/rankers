import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/unit/divider/content_divider.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/ui/pages/setting/list_item/setting_list_item.dart';

class SettingList extends StatefulWidget {
  List<dynamic>? recordListItems;

  // SettingList(List<dynamic>? recordListItems){
  //   this.recordListItems = recordListItems;
  // }

  @override
  State<StatefulWidget> createState() => SettingListState();
}

class SettingListState extends State<SettingList>{
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          HorizontalDivider(),
          SettingListItem(Icons.settings_rounded, "공지사항"),
          SettingListItem(Icons.settings_rounded, "버전정보"),
          SettingListItem(Icons.settings_rounded, "개인/알람"),
          SettingListItem(Icons.settings_rounded, "기타설정"),
          SettingListItem(Icons.settings_rounded, "언어설정"),
          SettingListItem(Icons.settings_rounded, "비밀번호 변경"),
          GestureDetector(
            onTap: (){
              Navigator.popAndPushNamed(context, '/login');
            },
            child: SettingListItem(Icons.settings_rounded, "로그아웃"),
          )
        ],
      ),

    );
  }


}
