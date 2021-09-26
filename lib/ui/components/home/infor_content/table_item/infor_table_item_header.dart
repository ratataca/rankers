import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/home/infor_content/table_item/unit/infor_table_header_item.dart';
import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';
import 'package:tennis_game_management/resources/colors.dart';

class InforTableItemHeader extends StatelessWidget{

  String title="";

  InforTableItemHeader({String title=""}){
    this.title=title;
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Text(
                    "",
                    style: TextStyle(
                      fontSize: 14,
                      color: FONT_DARK_GRAY_COLOR,
                    )
                ),
                width: 80,
                alignment: Alignment.center,
              ),

              Flexible(
                child: Container(
                  child: Column(
                    children: [
                      InforTableHeaderItem(),
                    ],
                  ),
                  // color: Colors.green,
                ),
                flex: 7,
              ),
            ],
          ),
        ),
        HorizontalDivider(),
      ],
    );
  }
}