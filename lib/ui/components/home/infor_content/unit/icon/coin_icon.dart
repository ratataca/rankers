import "package:flutter/material.dart";

class CoinIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset('assets/img/icon_coin2.png',),
        // child: Image.asset('assets/img/icon_gold_coin.png',),
      width: 14,
      height: 14,
      margin: EdgeInsets.only(right: 4, bottom: 2),
    );
  }

}


