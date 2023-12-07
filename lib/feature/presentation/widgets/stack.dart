import 'package:flutter/material.dart';
import 'package:flutter_application_1/resources/resources.dart';

class MyStack extends StatelessWidget {
  final Widget child;
  const MyStack({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: 600,
          right: 0,
          child: Image.asset(
            Images.divSocialDecoration,
            width: 110,
            height: 104,
          )),
      Positioned(
          top: 180,
          right: 0,
          child: Image.asset(
            Images.divSocialDecoration5,
            width: 60,
            height: 53,
          )),
      Positioned(
          top: 103,
          right: 78,
          child: Image.asset(
            Images.divSocialDecoration4,
            width: 28,
            height: 25,
          )),
      Positioned(
          top: 130,
          left: 3,
          child: Image.asset(
            Images.divSocialDecoration3,
            width: 60,
            height: 53,
          )),
      Positioned(
          top: 679,
          left: 29,
          child: Image.asset(
            Images.divSocialDecoration,
            width: 55,
            height: 49,
          )),
          child
    ]);
  }
}
