import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
class AdvDetials extends StatefulWidget {
  int? i;
  AdvDetials({this.i});

   

  @override
  State<AdvDetials> createState() => _AdvDetialsState();
}

class _AdvDetialsState extends State<AdvDetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:[
          Expanded(flex: 3,child: 
  Container(color: black,)
          ),
           Expanded(flex: 2,child: Placeholder(),)
        ] 
      )
    );
  }
}
//