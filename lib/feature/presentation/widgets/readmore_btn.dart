import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';

class ReadMoreBtn extends StatefulWidget {
  final Function() onPressed;
  const ReadMoreBtn({super.key, required this.onPressed});

  @override
  State<ReadMoreBtn> createState() => _ReadMoreBtnState();
}

class _ReadMoreBtnState extends State<ReadMoreBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 69,
      height: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
              colors: [Color(0xff7EA3A1), Color(0xff87E4DC)])),
      child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          child: const Text(
            "Read more",
            style: TextStyle(fontSize: 7),
          )),
    );
  }
}
