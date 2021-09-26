// import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

import 'package:tennis_game_management/ui/components/unit/appbar/tgm_app_bar_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:tennis_game_management/resources/colors.dart';



class SignUpPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => SignUpPageState();
}
@override

class SignUpPageState extends State<SignUpPage>{
  bool isPhoneOk = true;
  bool errorPhoneNum = false;
  bool errorCertificationNum = false;

  // FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController phoneEditingController = TextEditingController();
  TextEditingController verifyEditingController = TextEditingController();

  String verificationId = "";
  final Map<String, String> inforDict = {"phone" : "", "pw" : "", "nickname" : "", "activeArea": ""};

  // void signInWithPhoneAuthCredential(PhoneAuthCredential phoneAuthCredential) async {
  //   try {
  //     final authCredential = await _auth.signInWithCredential(phoneAuthCredential);
  //
  //     if(authCredential.user != null){
  //       print("인증완료 및 로그인성공");
  //       inforDict['phone'] = phoneEditingController.text;
  //       Navigator.pushNamed(context, '/signUpPassword', arguments: inforDict);
  //     }
  //     else{
  //       print("인증실패..로그인실패1");
  //
  //       // TODO 에러 어떻게 뜨는지 확인
  //     }
  //
  //   } on FirebaseAuthException catch (e) {
  //     setState(() {
  //       errorCertificationNum = true;
  //     });
  //   }
  // }

  Widget build(BuildContext context) {
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
                      controller: phoneEditingController,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '휴대폰',
                          errorText: errorPhoneNum ? '전화번호를 입력해주세요' : null,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: BUTTON_LIGHT_GREEN_COLOR,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () async {

                        //TODO- errorPhoneNum(bool) 변수로 휴대전화가 아니면 에러 메시지 보이게 함

                        // print(phoneEditingController.text);
                        //
                        // setState(() {
                        //   this.isPhoneOk = true;
                        // });


                        // await _auth.verifyPhoneNumber(
                        //     phoneNumber: '+8210' + phoneEditingController.text.substring(3).trim(),
                        //     timeout: const Duration(seconds: 60),
                        //     codeAutoRetrievalTimeout: (String verificationId) {
                        //       // Auto-resolution timed out...
                        //     },
                        //     verificationCompleted: (phoneAuthCredential) async {
                        //       print("otp 문자옴");
                        //     },
                        //     verificationFailed: (verificationFailed) async {
                        //       print(verificationFailed.code);
                        //
                        //       print("코드발송실패");
                        //
                        //     },
                        //     codeSent: (verificationId, resendingToken) async {
                        //       print("코드보냄");
                        //
                        //       setState(() {
                        //         this.verificationId = verificationId;
                        //       });
                        //     },
                        // );
                      },
                      child: Text(
                        "휴대폰 인증",
                        style: TextStyle(
                            fontSize:18
                        ),
                      ),
                    ),
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),

                  SizedBox(height: 20,),

                  this.isPhoneOk ?
                    Container(
                      child: Row(
                        children: [
                         Flexible(
                           child:  Container(
                             child: TextField(
                               controller: verifyEditingController,
                               keyboardType: TextInputType.number,
                               inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                               decoration: InputDecoration(
                                 suffix: Text("00:59"),
                                 suffixStyle: TextStyle(
                                     fontSize: 16,
                                     color: FONT_BLUE_COLOR
                                 ),
                                 border: OutlineInputBorder(),
                                 helperText: "00:59",

                                 counterText: "00:58",
                                 hintText: '인증번호',
                                 errorText: errorCertificationNum ? '인증번호가 일치하지 않습니다.' : null,
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
                                // TODO- 디버깅용
                                inforDict['phone'] = phoneEditingController.text;
                                Navigator.pushNamed(context, '/signUpPassword', arguments: inforDict);
                                // todo -errorCertificationNum(bool) 인정번호가 아닐때 에러 메시지
                                // Navigator.pushNamed(context, '/signUpPassword');
                                // PhoneAuthCredential phoneAuthCredential =
                                // PhoneAuthProvider.credential(
                                //     verificationId: verificationId, smsCode: verifyEditingController.text);
                                //
                                // signInWithPhoneAuthCredential(phoneAuthCredential);
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
                    )
                  :
                  Container(),

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
