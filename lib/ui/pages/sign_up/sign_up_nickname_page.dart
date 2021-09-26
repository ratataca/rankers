// import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';

import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:tennis_game_management/resources/colors.dart';



class SignUpNicknamePage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => SignUpNicknamePageState();
}
@override

class SignUpNicknamePageState extends State<SignUpNicknamePage>{
  bool errorNickname = false;

  // FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController nicknameController = TextEditingController();

  Widget build(BuildContext context) {
    final Map<String, String> inforDict = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    print(inforDict);

    return Scaffold(
      appBar: TgmAppBarBase("회원가입", context),
      body: Column(
        children: <Widget>[

          Flexible(
            child: Container(
              child: Column(
                children: [

                  SizedBox(height: 20,),

                  Container(
                    child: Row(
                      children: [
                        Flexible(
                          child:  Container(
                            child: TextField(
                              controller: nicknameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '닉네임 (중복 불가)',
                                errorText: errorNickname ? '별명을 2~10자 이내로 입력해주세요' : null,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                          ),
                          flex: 1,
                        ),

                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: FONT_GRAY_COLOR,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: (){
                              // todo -errorCertificationNum(bool) 인정번호가 아닐때 에러 메시지

                            },
                            child: Container(
                              child: Text(
                                "확인",
                                style: TextStyle(
                                    fontSize:18
                                ),
                              ),
                              width: 40,
                              height: 62,
                              alignment: Alignment.center,
                            ),
                          ),
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    // color: Colors.greenAccent,
                  ),



                  SizedBox(height: 20,),

                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: BUTTON_LIGHT_GREEN_COLOR,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: (){
                        inforDict['nickname'] =nicknameController.text;
                        Navigator.popAndPushNamed(context, '/home', arguments: inforDict);
                      },
                      child: Text(
                        "가입하기",
                        style: TextStyle(
                            fontSize:18
                        ),
                      ),
                    ),
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),

                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              // color:Colors.pink
            ),
            flex: 3,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
