import 'package:flutter/material.dart';

class itemHome extends StatelessWidget {
  final String _text;
  final GestureTapCallback _onTap;

  itemHome(this._text, this._onTap);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: _onTap,
      child: Container(

      alignment: Alignment.center,
      height: 200,
      width: 250,
      decoration: BoxDecoration(
          color: Color(0xff1A5D1A),
          borderRadius: new BorderRadius.all(Radius.circular(20))),
      child: Text(_text,style: TextStyle(fontSize: 25,color: Colors.white,fontFamily: 'CAREEM'),),
      )
    );

  }
}
