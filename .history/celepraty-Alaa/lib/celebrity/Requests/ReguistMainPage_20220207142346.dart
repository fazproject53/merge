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
  int? isSelected = 1;

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

                text(context, "طلبات الاعلان الخاصة بك", 18, black, fontWeight:FontWeight.bold),

                SizedBox(
                  height: 32.h,
                ),

//الطلبات وفق التصنيف-------------------------------

                 Expanded(
                  flex: 4,
                  child: Column(),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            )),
      ),
    );
  }

//Selection----------------------------------------------------------------------
  drowRowButton(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      Row(
        children: [
//الاعلانات-------------------------------------------------------
          gradientContainer(
            130,
            buttoms(
              context,
              'الاعلانات',
              12,
              white,
              () {},
            ),
          ),

          SizedBox(width: 17.w),
//الاهداءات-------------------------------------------------------
          gradientContainer(
            130,
            buttoms(
              context,
              'الاهداءات',
              12,
              white,
              () {},
            ),
          ),

          SizedBox(width: 17.w),
//المساحة الاعلانية-------------------------------------------------------

          gradientContainer(
            130,
            buttoms(
              context,
              'المساحة الاعلانية',
              12,
              white,
              () {},
            ),
          ),
//-------------------------------------------------------
        ],
      ),
    ]);
  }
}
