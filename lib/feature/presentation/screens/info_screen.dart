import 'package:flutter/material.dart';
import 'package:flutter_application_1/resources/resources.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(Images.image5)
        ],
      ),
    );
  }
}