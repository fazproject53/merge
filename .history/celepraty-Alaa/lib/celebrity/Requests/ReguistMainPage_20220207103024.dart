import 'package:celepraty/Models/Methods/method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestMainPage extends StatefulWidget {
  RequestMainPage({Key? key}) : super(key: key);

  @override
  State<RequestMainPage> createState() => _RequestMainPageState();
}

class _RequestMainPageState extends State<RequestMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: padding(33, 33, Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          SizedBox(height: 66.h,),
         Expanded(
           flex: 1,
           child:  Placeholder(),
           ),
           Expanded(
           flex: 1,
           child:  Placeholder(),
           ),
           Expanded(
           flex: 4,
           child:  Placeholder(),
           ),
          SizedBox(height: 10.h,),
        ],
      )),
    );
  }
}