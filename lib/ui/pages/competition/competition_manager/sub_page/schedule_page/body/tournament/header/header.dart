import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HeaderState();
}

class HeaderState extends State<Header>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [

          Container(
            // child: Text("번호"),
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20),
            width: 50,
          ),

          Container(
            child: Text(
              "라운드",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            alignment: Alignment.center,
            width: 60,
          ),

          Expanded(
            flex: 4,
            child: Container(
              child: Text("리그 소속",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),  // 또는 사람 이름
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 16, right: 16),

            ),
          ),

          Expanded(
            flex: 2,
            child: Container(
              child: Text("리그 순위",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),    // 또는 사람 이름 없어짐
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 20),
            ),
          ),
        ],
      ),
      width: double.infinity,
      height: 40,

    );
  }
}