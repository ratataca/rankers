import "package:flutter/material.dart";

class AdvertiseBanner extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // 0. 광고 부분(https://support.google.com/admanager/answer/1100453?hl=ko)
    return Container(
        child: Image.asset("assets/img/img_adv.PNG"),
        color: Colors.green,
        width: 400,
        height: 120,
        // width: 468,
        // height: 60,
        // margin: EdgeInsets.only(top: 4, bottom: 10),
      );
  }

}

