import 'package:celepraty/Models/Methods/method.dart';
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
//image-----------------------------------------------------          
      Expanded(
          flex: 3,
          child: Container(
            margin: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 2)],
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.h),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    image[widget.i!],
                  ),
                  fit: BoxFit.fill,
                )),
          )),
//detaials-----------------------------------------------------          

      Expanded(
        flex: 1,
        child:  text(context, "التفاصيل", 18, pink,fontWeight: FontWeight.bold,align:Align.),
      ),
//accapt buttom-----------------------------------------------------          

      Expanded(
        flex: 1,
        child: Placeholder(),
      )
    ]));
  }
}
//