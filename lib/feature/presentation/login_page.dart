import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';
import 'package:flutter_application_1/feature/presentation/widgets/data.dart';
import 'package:flutter_application_1/feature/presentation/widgets/forgot_pass_btn.dart';
import 'package:flutter_application_1/feature/presentation/widgets/sign_in_btn.dart';
import 'package:flutter_application_1/feature/presentation/widgets/sign_up_btn.dart';
import 'package:flutter_application_1/feature/presentation/widgets/stack.dart';
import 'package:flutter_application_1/resources/resources.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MyStack(
        child: Expanded(
          child: Center(
            child: Container(
                width: 290.w,
                height: 345.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFEFE),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 33,
                      ),
                      const Center(
                        child: Text(
                          "Login",
                          style: AppFonts.s18w700,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 11, bottom: 6),
                            child: Text(
                              "Email",
                              style: AppFonts.s12w700.copyWith(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextData(controller: email),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 11, bottom: 6),
                            child: Text(
                              "Password",
                              style: AppFonts.s12w700.copyWith(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextData(controller: password)
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 11,
                          ),
                          child: SignInBtn(
                            onPressed: () {},
                          )),
                      SignUpBtn(onPressed: () {}),
                      ForgotPassBtn(onPressed: () {}),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
