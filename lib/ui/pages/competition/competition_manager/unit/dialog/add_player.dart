import "package:flutter/material.dart";

class AddPlayer extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("이름"),
        
        Container(
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '사용자 이름',
              // errorText: errorPassword ? '비밀번호는 영문, 숫자를 포함하여 8자 이상이어야 합니다' : null,
            ),
          ),
          // padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 0, bottom: 0),
        ),
      ],
    );
  }

}


