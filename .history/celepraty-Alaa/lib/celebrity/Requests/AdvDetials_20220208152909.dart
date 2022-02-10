import 'package:flutter/material.dart';
class AdvDetials extends StatefulWidget {
  

  @override
  State<AdvDetials> createState() => _AdvDetialsState();
}

class _AdvDetialsState extends State<AdvDetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Image(image: AssetImage("$image")),
    );
  }
}