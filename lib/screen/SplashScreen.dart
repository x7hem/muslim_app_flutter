import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _mockCheckForSession().then((value) {
      _navigateToHome();
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 3000), () {
      _navigateToHome();
    });

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        color: Color(0xff1A5D1A),
        alignment: Alignment.center,

        child: Text("مسلم",style: TextStyle(fontSize: 40,color: Colors.white,fontFamily: 'CAREEM'),),),
      );

  }
}
