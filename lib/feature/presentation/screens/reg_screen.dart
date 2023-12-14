import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/routes/app_router.gr.dart';
import 'package:flutter_application_1/feature/presentation/theme/app_fonts.dart';
import 'package:flutter_application_1/feature/presentation/widgets/data.dart';
import 'package:flutter_application_1/feature/presentation/widgets/forgot_pass_btn.dart';
import 'package:flutter_application_1/feature/presentation/widgets/sign_in_btn.dart';
import 'package:flutter_application_1/feature/presentation/widgets/sign_up_btn.dart';
import 'package:flutter_application_1/feature/presentation/widgets/stack.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class RegScreen extends StatelessWidget {
  const RegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();
    final TextEditingController lastName = TextEditingController();
    final TextEditingController firstName = TextEditingController();
    final TextEditingController confirmPassword = TextEditingController();

    return Scaffold(
      body: MyStack(
        child: Flexible(
          child: Center(
            child: Container(
                width: 290.w,
                height: 500.h,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFEFE),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 33.h,
                      ),
                      const Center(
                        child: Text(
                          "Registration",
                          style: AppFonts.s18w700,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 11, bottom: 6),
                            child: Text(
                              "First name*",
                              style: AppFonts.s12w700.copyWith(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextData(controller: firstName),
                          Padding(
                            padding: const EdgeInsets.only(top: 11, bottom: 6),
                            child: Text(
                              "Last name*",
                              style: AppFonts.s12w700.copyWith(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextData(controller: lastName),
                          Padding(
                            padding: const EdgeInsets.only(top: 11, bottom: 6),
                            child: Text(
                              "Email*",
                              style: AppFonts.s12w700.copyWith(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextData(controller: email),
                          Padding(
                            padding: const EdgeInsets.only(top: 11, bottom: 6),
                            child: Text(
                              "Password*",
                              style: AppFonts.s12w700.copyWith(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextData(controller: password),
                          Padding(
                            padding: const EdgeInsets.only(top: 11, bottom: 6),
                            child: Text(
                              "Confirm password",
                              style: AppFonts.s12w700.copyWith(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          TextData(controller: confirmPassword)
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 11,
                          ),
                          child: SignInBtn(
                            onPressed: () {
                              context.router.push(const HomeRoute());
                            },
                          )),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
