import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/routes/app_router.dart';
import 'package:flutter_application_1/feature/presentation/screens/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      child: MaterialApp.router(
        routerConfig: AppRouter().config(),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
            color: Colors.black
          )
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}