import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        body: Column(children: [
      Expanded(
          flex: 3,
          child: Container(
            margin: Ed,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.h),
              ),
              image: DecorationImage(
                  image: AssetImage(
                    image[widget.i!],
                  ),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken)),
            ),
          )),
      Expanded(
        flex: 2,
        child: Placeholder(),
      )
    ]));
  }
}
//