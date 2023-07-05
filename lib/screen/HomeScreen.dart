import 'package:flutter/material.dart';
import 'package:muslim_app_flutter/widget/TopBar.dart';
import 'package:muslim_app_flutter/widget/itemHome.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Column(
        children: [
          Expanded(
            flex: 1,
            child: TopBar("مسلم"),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    itemHome("مسبحة",(){
                      Navigator.of(context).pushReplacementNamed('/RosaryScreen');
                    }),
                    SizedBox(height: 20,),
                    itemHome("اذكار",(){
                      _SnackBar();
                    }),
                    SizedBox(height: 20,),
                    itemHome("موعد صلاة",(){
                      _SnackBar();
                    }),

                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }

  void _SnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
             "للاسف الخدمة غير متوفرة حاليا",style: TextStyle(fontSize: 16),),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}



