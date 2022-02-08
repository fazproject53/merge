import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestMainPage extends StatefulWidget {
  RequestMainPage({Key? key}) : super(key: key);

  @override
  State<RequestMainPage> createState() => _RequestMainPageState();
}

class _RequestMainPageState extends State<RequestMainPage> {
  bool? isChang = false;
  int selectItem = 1;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: drowAppBar(requestBar),
        body: padding(
            33,
            33,
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 26.h,
                ),
//صف الاختيارات-------------------------------
                Expanded(
                  flex: 1,
                  child: drowRowButton(context),
                ),
//النص-------------------------------

                const Expanded(
                  flex: 1,
                  child: Placeholder(),
                ),
//الطلبات وفق التصنيف-------------------------------

                const Expanded(
                  flex: 4,
                  child: Placeholder(),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            )),
      ),
    );
  }


//Buttoms----------------------------------------------------------------------
  drowRowButton(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      Row(
        children: [
    //--------------------------------
          gradientContainer(
            130,
            buttoms(
              context,
              'متابع',
              12,
              white,
              () {
                setState(() {
                  isChang = false;
                });
                // print("fallower$isChang");
              },
            ),
            gradient: isChang! ? true : false,
          ),

          SizedBox(width: 17.w),
          //--------------------------------
          gradientContainer(
            130,
            buttoms(
              context,
              'مشهور',
              12,
              white,
              () {
                setState(() {
                  isChang = true;
                });
                print("famus$isChang");
              },
            ),
            gradient: isChang! ? false : true,
          ),
          //  gradient: isSelec ? false : true,),
          SizedBox(width: 17.w),
          gradientContainer(
            130,
            buttoms(
              context,
              'مشهور',
              12,
              white,
              () {
                setState(() {
                  isChang = true;
                });
                print("famus$isChang");
              },
            ),
            gradient: isChang! ? false : true,
          ),
          //--------------------------------
        ],
      ),
    ]);
  }
}
