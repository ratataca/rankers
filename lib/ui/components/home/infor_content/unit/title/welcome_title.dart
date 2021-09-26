import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/home/infor_content/unit/icon/coin_icon.dart';
import 'package:tennis_game_management/resources/colors.dart';


class WelcomeTitle extends StatelessWidget {
  String name="";
  WelcomeTitle({String name=""}){this.name=name;}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Flexible(
            child: Container(
              child: Text(
                  this.name +" 님 \n반갑습니다.",

                  style: TextStyle(
                    fontSize: 22,
                    height: 1.3,

                    color: FONT_DARK_GREEN_COLOR,
                  )
              ),
              alignment: Alignment.centerLeft,
            ),
            flex: 2,
          ),

          Flexible(
            child: Container(
              child: Row(
                children: [
                  CoinIcon(),

                  Text(
                      "1,892",

                      style: TextStyle(
                        fontSize: 14,
                        height: 1.3,
                        color: FONT_DARK_GREEN_COLOR,
                      )
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
              ),
              height: 60,
              // color: Colors.greenAccent,
            ),
            flex: 1,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      // padding: EdgeInsets.only(left: 20, right: 16, top: 20, bottom: 6),
      margin: EdgeInsets.only(left: 20, right: 28, top: 20, bottom: 20),
      // color: Colors.blue,
    );
  }
}
