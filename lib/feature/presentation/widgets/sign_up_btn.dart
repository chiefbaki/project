import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';

class SignUpBtn extends StatelessWidget {
  final Function() onPressed;
  const SignUpBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero
        ),
        child: Text(
          "Sign up",
          style: AppFonts.s13w500.copyWith(
              color: Colors.black.withOpacity(0.85),
              decoration: TextDecoration.underline),
        ));
  }
}
