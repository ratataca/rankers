import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/resources/colors.dart';

import 'package:tennis_game_management/ui/components/unit/divider/horizontal_divider.dart';

class Header extends StatefulWidget{
  String title="";
  Header(int title){this.title=title.toString();}
  @override
  State<StatefulWidget> createState() => HeaderState(this.title);
}

class HeaderState extends State<Header>{
  bool isDoing = true;
  String title="";
  HeaderState(String title){this.title=title;}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        HorizontalDivider(),


        Container(
          child: Row(
            children: [

              Container(
                  child: Text(
                    this.title +"-draw",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      // color: isDoing ? BACKGROUND_GREEN_205072 : BLUE_OUTLINE,
                    ),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20),
              ),

            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),

          width: double.infinity,
          height: 40,
          color: SUB_BACKGROUND_LIGHT_GREEN_COLOR,

        ),

        HorizontalDivider(),
      ],
    );
  }
}