import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
class AdvDetials extends StatefulWidget {
  int? i
  AdvDetials(int i);

   

  @override
  State<AdvDetials> createState() => _AdvDetialsState();
}

class _AdvDetialsState extends State<AdvDetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Image(image: AssetImage(image[widget.])),
      )
    );
  }
}