import 'package:flutter/material.dart';
class AdvDetials extends StatefulWidget {
  AdvDetials(String image, {Key? key}) : super(key: key);

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