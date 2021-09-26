import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:tennis_game_management/resources/colors.dart';


PreferredSizeWidget TgmAppBarNotIndex({String title=""}){

    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      title: Container(
        child: Text(title, style: new TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          ),
        ),
        // alignment: Alignment.center,
        // margin: EdgeInsets.only(left:40),
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      // leading: Icon(Icons.arrow_back, color: Colors.black,),
      actions: [
        IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: null),
        IconButton(
          padding: new EdgeInsets.only(right: 20),
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
                  ),
                ),
              )
            ],
          ),
          onPressed: () {},
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottom: PreferredSize(
          child: Container(
            color: Color.fromARGB(255, 151, 151, 151),
            height: 0.1,
          ),
          preferredSize: Size.fromHeight(1.0)),
    );
  }


