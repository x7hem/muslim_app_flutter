import 'package:flutter/material.dart';
import 'package:muslim_app_flutter/prefs/shared_pref_controller.dart';
import 'package:muslim_app_flutter/widget/TopBar.dart';

class RosaryScreen extends StatefulWidget {
  const RosaryScreen({super.key});



  @override
  State<RosaryScreen> createState() => _RosaryScreenState();
}


class _RosaryScreenState extends State<RosaryScreen> {
  var _num;
  var _textRosary;
  @override
  void initState() {
    MySharedPreferences.instance
        .getIntegerValue("num")
        .then((value) => setState(() {
      _num = value;
    }));
    MySharedPreferences.instance
        .getStringValue("text")
        .then((value) => setState(() {
          if(value ==""){
            _textRosary="سبحان الله";
          }else{
            _textRosary = value;
          }

    }));

    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return  WillPopScope(

      onWillPop: () => _onBack(context),
      child: Scaffold(
        
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xff1A5D1A),
          actions: [
            PopupMenuButton<String>(
              onSelected: (String value){
                if(_textRosary !=value){
                  setState(() {
                    _textRosary =value;
                  });
                }
              },
              elevation: 5,
                offset: Offset(25,35),
                itemBuilder: (context){
              return[
                PopupMenuItem(child: Text("سبحان الله",style: TextStyle(color: Color(0xff1A5D1A),fontSize: 18),),height: 15,value: "سبحان الله",),
                PopupMenuDivider(),
                PopupMenuItem(child: Text("الله اكبر",style: TextStyle(color: Color(0xff1A5D1A),fontSize: 18),),height: 15,value: "الله اكبر",),
                PopupMenuDivider(),
                PopupMenuItem(child: Text("استغفرالله",style: TextStyle(color: Color(0xff1A5D1A),fontSize: 18),),height: 15,value: "استغفرالله",),
                PopupMenuDivider(),
                PopupMenuItem(child: Text("الحمد لله",style: TextStyle(color: Color(0xff1A5D1A),fontSize: 18),),height: 15,value: "الحمد لله",),
                PopupMenuDivider(),
                PopupMenuItem(child: Text("لا اله الا الله",style: TextStyle(color: Color(0xff1A5D1A),fontSize: 18),),height: 15,value: "لا اله الا الله",),
              ];
            })
          ],

        ),
        body: SafeArea(child: Column(
          children: [
            Expanded(
              flex: 1,
              child: TopBar("مسبحة"),
            ),
            Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("$_num",style: TextStyle(fontSize: 30,color: Color(0xff1A5D1A),fontFamily: 'CAREEM'),),
                        SizedBox(width: 10,),
                        Text(_textRosary,style: TextStyle(fontSize: 30,color: Color(0xff1A5D1A),fontFamily: 'CAREEM'),),
                      ],
                    ),
                    SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(

                              onPressed: (){
                                setState(() {
                                  _num=0;
                                });
                              },
                              child: Text("اعادة",
                                style: TextStyle(fontSize: 18),),
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(

                                    Colors.red),

                                padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      vertical: 15),
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(

                                        borderRadius:
                                        BorderRadius.only(bottomLeft: Radius.circular(10)))),

                              ),
                            ),
                            ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  _num++;
                                });
                              },
                            child: Text("سبح",
                            style: TextStyle(fontSize: 18),),
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(

                                    Color(0xff1A5D1A)),

                                padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 15),
                              ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(

                                        borderRadius:
                                        BorderRadius.only(topRight: Radius.circular(10)))),

                              ),
                            ),
                          ],
                        ),
                    Spacer(),
                  ],
                ),
              )
            ),
          ],
        )),
      ),
    );
  }

  _onBack(BuildContext context)  {
    var _sum =_num;
    var _text =_textRosary;
     MySharedPreferences.instance
        .setIntegerValue("num", _sum);
    MySharedPreferences.instance
        .setStringValue("text", _text);
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }
}
