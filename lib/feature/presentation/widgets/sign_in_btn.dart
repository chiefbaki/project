import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';

class SignInBtn extends StatefulWidget {
  final Function() onPressed;
  const SignInBtn({super.key, required this.onPressed});

  @override
  State<SignInBtn> createState() => _SignInBtnState();
}

class _SignInBtnState extends State<SignInBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117,
      height: 33,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
              colors: [Color(0xff7EA3A1), Color(0xff87E4DC)])),
      child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          child: const Text(
            "Sign in",
            style: AppFonts.s13w500,
          )),
    );
  }
}
