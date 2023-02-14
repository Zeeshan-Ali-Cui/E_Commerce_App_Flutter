import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';

import 'Views/SplashScreen.dart';

void main() {
  Imager.placeholderPath= "assets/images/screen1.png";
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      ScreenUtilInit(
      designSize: const Size(428, 954),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context, child) {

        return MaterialApp(
          title: 'OverSabi',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: child,
          debugShowCheckedModeBanner: false,
        );
      },
      child: const buysel(),
    );
  }
}

