import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';
import 'package:flutter_application_1/feature/presentation/widgets/data.dart';
import 'package:flutter_application_1/feature/presentation/widgets/forgot_pass_btn.dart';
import 'package:flutter_application_1/feature/presentation/widgets/sign_in_btn.dart';
import 'package:flutter_application_1/feature/presentation/widgets/sign_up_btn.dart';
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
      body: Stack(children: [
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
        Positioned(
          left: 70,
          right: 55,
          top: 300,
          child: Stack(
            children: [
              Expanded(
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
                            child: SignInBtn(onPressed: (){},)
                          ),
                          SignUpBtn(onPressed: (){}),
                          ForgotPassBtn(onPressed: (){}),
                          
                        ],
                      ),
                    )),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
