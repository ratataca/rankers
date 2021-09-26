
import "package:flutter/material.dart";
import 'package:tennis_game_management/ui/components/unit/divider/content_divider.dart';


class PlayCountTitle extends StatelessWidget {
  String allPlayCnt = "";
  String winPlayCnt = "";
  String lowPlayCnt = "";

  PlayCountTitle({String allPlayCnt="", String winPlayCnt="", String lowPlayCnt="", }){
    this.allPlayCnt=allPlayCnt;
    this.winPlayCnt=winPlayCnt;
    this.lowPlayCnt=lowPlayCnt;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [


          Container(
            child: Row(
              children: [
                Container(
                  child: Text(
                      "경기수 : "+ this.allPlayCnt,

                      style: TextStyle(
                        fontSize: 14,
                        // fontWeight: FontWeight.bold,
                        // color: FREE_BOARD_LIGHT_GREEN_COLOR,
                      )
                  ),
                  // alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(right: 20),
                ),

                Container(
                  child: Text(
                      "승 : "+ this.winPlayCnt,

                      style: TextStyle(
                        fontSize: 14,
                      )
                  ),
                  margin: EdgeInsets.only(right: 20),

                ),

                Container(
                  child: Text(
                      "패 : "+ this.lowPlayCnt,

                      style: TextStyle(
                        fontSize: 14,
                        // fontWeight: FontWeight.bold,
                        // color: FONT_RED_COLOR,
                      )
                  ),
                  // alignment: Alignment.centerLeft,
                  // margin: EdgeInsets.only(right: 4),
                  margin: EdgeInsets.only(right: 20),
                ),

              ],
              // mainAxisAlignment: MainAxisAlignment.center,
            ),
            margin: EdgeInsets.only(left: 2),
          )


        ],
      ),
      // height: 40,
      // color: SUB_BACKGROUND_LIGHT_GREEN_COLOR,
      padding: EdgeInsets.only(left: 18, bottom: 10, top: 10),
    );
  }

}
