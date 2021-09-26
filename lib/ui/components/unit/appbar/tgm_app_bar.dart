import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:tennis_game_management/resources/colors.dart';


PreferredSizeWidget TgmAppBar(int idx, BuildContext context ){

    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      // backgroundColor: Colors.red, // status bar color
      // brightness: Brightness.light, // status bar brightness
      title: Container(
        child: Text(TgmAppBarTitle(idx: idx), style: new TextStyle(
          fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        )),

        margin: EdgeInsets.only(left: 4),
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      actions: [
        IconButton(
            // padding: new EdgeInsets.only(left: 20),
            icon: Icon(Icons.search, color: Colors.black,), onPressed: null
        ),
        // IconButton(
        //     icon: Icon(Icons.person, color: Colors.black,), onPressed: null
        // ),
        IconButton(
          padding: new EdgeInsets.only(right: 16),
          icon: new Stack(
            children: <Widget>[
              new Icon(Icons.notifications, color: Colors.black,),
              new Positioned(
                right: 0,
                child: new Container(
                  padding: EdgeInsets.all(1),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 6,
                    minHeight: 6,
                    // minWidth: 12,
                    // minHeight: 12,
                  ),
                  child: new Text(
                    '',
                    // '$_counter',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          onPressed: () {},
        ),


        Container(
          margin: new EdgeInsets.only(right: 16),
          // color: Colors.pink,
          child:  GestureDetector(
            onTap: ()  {
              Navigator.pushNamed(context, '/setting');
              print("setting!");
            },
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(50.0),
              // TODO- 이미지 압축을 하여 정사각형으로 만들기
              child:CircleAvatar( backgroundImage: AssetImage("assets/img/my_img.jpg"), radius: 60.0, ),

            ),
          ),
          height: 30,
          width: 30,
        ),

        // Container(
        //   margin: new EdgeInsets.only(right: 16),
        //   child: CircleAvatar(
        //     // backgroundColor: Colors.brown.shade800,
        //     // backgroundImage:  getPropertyValue('background-image'),
        //     child:  Container(
        //       decoration: BoxDecoration(
        //         image: DecorationImage(
        //         image: AssetImage(
        //           "assets/img/img_profile.jpg"
        //         ),
        //           fit: BoxFit.cover
        //         )
        //       ),
        //     ),
        //   ),
        //
        //
        //     // backgroundColor: Colors.orange.shade800,
        //     // foregroundColor: Colors.white,
        //       // child: ClipOval(
        //       //   child: Image.asset("assets/img/icon_kakao.jpg", fit: BoxFit.fitHeight),
        //       // ),
        //       // child: new Container(
        //       //   child: ClipRRect(
        //       //     // borderRadius: new BorderRadius.circular(100.0),
        //       //     child: Image.asset("assets/img/img_profile.jpg"),
        //       //   ),
        //       // ),
        //
        //       // ClipRRect(
        //       //   borderRadius: new BorderRadius.circular(100.0),
        //       //   child: Image.asset("assets/img/img_profile.jpg"),
        //       // )
        //     // child: const Text(
        //     //   'R',
        //     //   style: TextStyle(
        //     //     fontSize: 12,
        //     //   ),
        //     // ),
        //     // backgroundImage: AssetImage("assets/img/img_profile.jpg", ),
        //
        //   width: 26,
        //   height: 26,
        //   color: Colors.green,
        // ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }


String TgmAppBarTitle({int idx=0}){
  switch(idx){
    case 0:
      return "홈";
    case 1:
      return "대회";
    case 2:
      return "랭킹";
    case 3:
      return "기록";
    case 4:
      return "게시판";
    default:
      return "홈";
  }
}