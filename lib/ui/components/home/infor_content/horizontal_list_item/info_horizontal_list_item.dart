import "package:flutter/material.dart";
import 'package:tennis_game_management/resources/colors.dart';

class InfoHorizontalListItem extends StatelessWidget {

  int index=0;

  InfoHorizontalListItem({int index=0}){
    this.index=index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          // 이미지
          // Container(
          //   child: Image.asset('assets/img/icon_player_double.png',),
          //   width: 70,
          //   height: 70,
          //
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20), //모서리를 둥글게
          //       border: Border.all(
          //           color: Colors.black12,
          //           width: 3,
          //
          //       )
          //   )
          // ),
          // Text("복식"),


          // 필요정보
          Column(
            children: [
              Container(
                child: Text(this.index==1 ? "단식매치" : "복식매치"),
                margin: EdgeInsets.only(bottom: 12),
              ),

              Row(
                children: [
                  Container(
                    child: Text("139 ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: FREE_BOARD_LIGHT_GREEN_COLOR,
                      ),
                    ),
                  ),

                  Container(
                    child: Text("▲",
                      style: TextStyle(
                        fontSize: 12,
                        color: BACKGROUND_RED_COLOR

                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 4),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.end,
              ),



              Container(
                child: Text(
                  "62.38%",

                ),
                // width: 70,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 6),
                margin: EdgeInsets.only(top: 6),
              ),

            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),


          Column(
            children: [
              Container(
                child: Text(this.index==1 ? "단식게임" : "복식게임"),
                margin: EdgeInsets.only(bottom: 12),
              ),

              Row(
                children: [
                  Container(
                    child: Text("1242 ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: FREE_BOARD_LIGHT_GREEN_COLOR,
                      ),
                    ),
                  ),

                  Container(
                    child: Text("▼",
                      style: TextStyle(
                        fontSize: 12,
                        color: BACKGROUND_BLUE_COLOR
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 4),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.end,
              ),

              Container(
                child: Text(
                  "62.38%",
                ),
                width: 70,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 6),
                margin: EdgeInsets.only(top: 6),
              ),

            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      height: 80,
      width: 300,
      padding: EdgeInsets.only(right: 60, left: 60, top: 14, bottom: 14),

      decoration: new BoxDecoration(
        color: BACKGROUND_GREEN_TEST2,
        image: new DecorationImage(
          alignment: Alignment.topRight,
          fit: BoxFit.fitHeight,
          // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
          // image: this.index==1 ? AssetImage('assets/img/icon_player_single3.png',) : AssetImage('assets/img/icon_player_double2.png',),
          image: this.index==1 ?
            AssetImage('assets/img/icon_player_single3.png',)
            :
            AssetImage('assets/img/icon_player_double2.png',),
        ),
      ),
    );
  }

}


