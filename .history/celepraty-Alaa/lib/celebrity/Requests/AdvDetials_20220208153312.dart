import 'package:flutter/material.dart';
class AdvDetials extends StatefulWidget {
  final String? image;

  const AdvDetials(@ re String image);

  @override
  State<AdvDetials> createState() => _AdvDetialsState();
}

class _AdvDetialsState extends State<AdvDetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Image(image: AssetImage("${widget.image}")),
      )
    );
  }
}