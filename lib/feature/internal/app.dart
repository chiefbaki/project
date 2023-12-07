import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            color: Colors.black
          )
        ),
        debugShowCheckedModeBanner: false,
        home: ListItemsPage(),
      ),
    );
  }
}