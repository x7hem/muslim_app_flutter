import 'package:flutter/material.dart';
import 'package:muslim_app_flutter/widget/TopBar.dart';

class RosaryScreen extends StatefulWidget {
  const RosaryScreen({super.key});

  @override
  State<RosaryScreen> createState() => _RosaryScreenState();
}

class _RosaryScreenState extends State<RosaryScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Column(
        children: [
          Expanded(
            flex: 1,
            child: TopBar("مسبحة"),
          ),
          Expanded(
            flex: 6,
            child: Text("مسبحة"),
          ),
        ],
      )),
    );
  }
}
