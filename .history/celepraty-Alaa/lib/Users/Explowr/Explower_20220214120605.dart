import 'package:celepraty/Models/Methods/method.dart';
import 'package:flutter/material.dart';
class Explower extends StatefulWidget {
  const Explower({Key? key}) : super(key: key);

  @override
  State<Explower> createState() => _ExplowerState();
}

class _ExplowerState extends State<Explower> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: drowAppBar("اكسبلور"),
        body: sT(
    
      ),),
    );
  }
}