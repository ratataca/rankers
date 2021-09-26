import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/pages/competition/competition_manager/unit/title/infor_text.dart';

class InforTitleAndData extends StatelessWidget {

  String title="";
  String data="";
  double size = 14.0;
  bool isBold = false;

  InforTitleAndData({String title="", String data="", double size=16.0, bool isBold=false}){
    this.title = title;
    this.data = data;
    this.size = size;
    this.isBold = isBold;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: HeaderInforText(title: this.title, size: this.size, isBold: true),
            width: 80,
            alignment: Alignment.centerRight,
            // color: Colors.deepPurpleAccent,
          ),

          Flexible(
            child: Container(
              child: HeaderInforText(title: this.data, size: this.size, isBold: false,),
              margin: EdgeInsets.only(left: 16),
            ),
            flex: 1,
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      margin: EdgeInsets.only(bottom: 14),
    );
  }

}


