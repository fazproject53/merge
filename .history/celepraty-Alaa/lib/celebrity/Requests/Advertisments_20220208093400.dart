import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folding_cell/folding_cell/widget.dart';

class Advertisment extends StatefulWidget {
  const Advertisment({Key? key}) : super(key: key);

  @override
  State<Advertisment> createState() => _AdvertismentState();
}

class _AdvertismentState extends State<Advertisment> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, i) {
          return Container(
            color: black,
            height: 30.h,
            width: double.infinity,
          );});
  }

Widget body(){
  
}

}