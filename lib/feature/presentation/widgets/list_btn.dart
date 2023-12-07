import 'package:flutter/material.dart';

class ListBtn extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const ListBtn({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }
}
