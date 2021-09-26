import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:tennis_game_management/resources/colors.dart';
import 'package:tennis_game_management/ui/pages/sign_up/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    // 가로모드 금지
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);


    final TextEditingController phone = new TextEditingController();
    final TextEditingController password = new TextEditingController();


    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Column(
        children: <Widget>[
          Flexible(
            child: Container(
              child: Text(
                "로그인",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              padding: EdgeInsets.only(left: 16),
              width: double.infinity,
              // height: 150,
              alignment: Alignment.bottomLeft,
            ),
            flex: 2,
          ),

          Flexible(
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: TextField(
                      controller: phone,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '휴대폰'),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),


                  Container(
                    child: TextField(
                      obscureText: true,
                      controller: password,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(
                                  Icons.clear,
                                  color: password.text.isNotEmpty ? Colors.grey : Colors.transparent
                                  // color: Colors.grey,
                              ),
                            onPressed: (){
                                password.clear();
                            }
                          ),
                          border: OutlineInputBorder(),
                          hintText: '비밀번호',
                          // errorText: 'Hello',
                      ),
                    ),
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 15, bottom: 0),
                  ),


                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/findPassword');
                      },
                      child: Text( '비밀번호 재설정',),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.focused))
                                return Colors.teal;
                              if (states.contains(MaterialState.hovered))
                                return Colors.teal;
                              if (states.contains(MaterialState.pressed))
                                return Colors.teal;
                              return Colors.teal; // null throus error in flutter 2.2+.
                            }),
                      ),

                    ),
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 6),
                  ),

                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: BUTTON_LIGHT_GREEN_COLOR,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: (){

                        Navigator.popAndPushNamed(context, '/home');
                      },
                      child: Text(
                        "로그인",
                        style: TextStyle(
                            fontSize:18
                        ),
                      ),
                    ),
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // border: Border.all(
                      //   width: 0.8,
                      //   // color: Colors.orange,
                      // ),
                    ),
                  ),

                  Container(
                    child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        primary: BACKGROUND_GREEN_TEST2,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: (){

                        Navigator.pushNamed(context, '/signUp');
                      },
                      child: Text(
                        "회원가입",
                        style: TextStyle(
                          fontSize:18,
                          color: FREE_BOARD_LIGHT_GREEN_COLOR
                        ),
                      ),

                    ),
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 16, right: 16, top: 20),
                    decoration: BoxDecoration(
                        color: FONT_NEW_COLOR,
                        border: Border.all(color: FREE_BOARD_LIGHT_GREEN_COLOR),
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),

                  // TextButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, '/signUp').then((value) => {
                  //
                  //     });
                  //   },
                  //   child: Text('회원가입'),
                  // ),

                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              // color:Colors.pink
            ),
            flex: 3,
          ),

          Flexible(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 20,),

                  Container(
                    child: Text("--- or ---"),
                  ),

                  SizedBox(height: 30,),


                  Row(
                    children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/img/icon_kakao.jpg'),
                          radius: 50,
                        ),
                        width: 60,
                        height: 60,
                      ),
                    ),

                    SizedBox(width: 20,),

                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/img/icon_google.png'),
                          radius: 50,
                        ),
                        width: 60,
                        height: 60,
                      ),
                    ),



                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),



                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              // margin: EdgeInsets.only(bottom: 30),
              // color:Colors.teal

            ),
            flex: 2,
          ),


        ],
      ),
    );
  }
}
