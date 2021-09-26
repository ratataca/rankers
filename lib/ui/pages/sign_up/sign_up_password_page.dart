// import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';

import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:tennis_game_management/resources/colors.dart';



class SignUpPasswordPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => SignUpPasswordPageState();
}
@override

class SignUpPasswordPageState extends State<SignUpPasswordPage>{
  bool errorPassword = false;
  bool errorPasswordSame = false;



  // FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordSameController = TextEditingController();

  Widget build(BuildContext context) {
    final Map<String, String> inforDict = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

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
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // labelText: '비밀번호',
                          hintText: '비밀번호',
                        errorText: errorPassword ? '비밀번호는 영문, 숫자를 포함하여 8자 이상이어야 합니다' : null,
                      ),
                    ),
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 0, bottom: 0
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    child: TextField(
                      controller: passwordSameController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // labelText: '비밀번호 확인',
                          hintText: '비밀번호 확인',
                          errorText: errorPasswordSame ? '입력하신 비밀번호가 동일하지 않습니다.' : null,
                      ),

                    ),
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 0, bottom: 0
                    ),
                  ),
                  
                  SizedBox(height: 20,),

                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: BUTTON_LIGHT_GREEN_COLOR,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: (){
                        if(passwordController.text != passwordSameController.text){
                          setState(() {
                            errorPasswordSame = true;
                          });
                        }
                        else{
                          setState(() {
                              errorPasswordSame = false;
                              inforDict['pw'] =passwordController.text;
                              Navigator.pushNamed(context, '/signUpSelectArea', arguments: inforDict);
                          });
                        }
                      },
                      child: Text(
                        "비밀번호 확인",
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
