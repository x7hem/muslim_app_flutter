import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim_app_flutter/screen/HomeScreen.dart';
import 'package:muslim_app_flutter/screen/RosaryScreen.dart';
import 'package:muslim_app_flutter/screen/SplashScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xff1A5D1A),
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'/SplashScreen',

      routes: {
        '/HomeScreen': (context) => const HomeScreen(),
        '/SplashScreen': (context) => SplashScreen(),
        '/RosaryScreen': (context) => RosaryScreen(),
      },
    );
  }
}

