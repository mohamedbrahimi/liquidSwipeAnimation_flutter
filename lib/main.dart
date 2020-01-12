import 'package:flutter/material.dart';
import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const TextStyle goldCoinGreyStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle greyStyle =
  TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "Product Sans");

  static const TextStyle boldStyle = TextStyle(
      fontSize: 50.0,
      color: Colors.black,
      fontFamily: "Product Sans",
      fontWeight: FontWeight.bold);
  static const TextStyle descriptionGreyStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20.0,
      fontFamily: "Product Sans"
  );
  static const TextStyle descriptionWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontFamily: "Product Sans"
  );


  final pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "GoldCoin",
                  style: goldCoinGreyStyle,
                ),
                Text(
                  "skip",
                  style: goldCoinGreyStyle,
                )
              ],
            ),
          ),
          Image.asset("assets/img/firstImage.png"),
          Column(
            children: <Widget>[
              Text(
                "Online",
                style: greyStyle,
              ),
              Text(
                "Gambling",
                style: boldStyle,
              )
            ],
          ),
        ],
      ),
    ),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}
