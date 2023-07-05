import 'package:flutter/material.dart';

class TopBar extends StatelessWidget   {
  final String _text;

  TopBar(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff1A5D1A),
          borderRadius: new BorderRadius.vertical(
              bottom: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child:
          Text(_text,style: TextStyle(fontSize: 40,color: Colors.white,fontFamily: 'CAREEM'),),

        ),
      ),

    );
  }
}