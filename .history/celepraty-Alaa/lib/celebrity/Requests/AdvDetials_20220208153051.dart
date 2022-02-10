import 'package:flutter/material.dart';
class AdvDetials extends StatefulWidget {
  String i
  AdvDetials(String image, {Key? key}) : super(key: key);

  @override
  State<AdvDetials> createState() => _AdvDetialsState();
}

class _AdvDetialsState extends State<AdvDetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Image(image: AssetImage("${}")),
      )
    );
  }
}