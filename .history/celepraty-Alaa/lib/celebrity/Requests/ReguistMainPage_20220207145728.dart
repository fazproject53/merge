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
               crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                SizedBox(
                  height: 26.h,
                ),
//صف الاختيارات-------------------------------
                drowRowButton(context),
                 SizedBox(
                  height: 42.h,
                ),
//النص-------------------------------

                text(context, "طلبات الاعلانات الخاصة بك", 18, black,
                    fontWeight: FontWeight.bold),

                SizedBox(
                  height: 32.h,
                ),

//الطلبات وفق التصنيف-------------------------------

                Expanded(
                  flex: 4,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: ((context, i) {
                      return Text("data");
                    }),
                  ),
                ),
              ]),
            )));
  }

//Selection----------------------------------------------------------------------
  drowRowButton(BuildContext context) {
    return Row(
      children: [
//الاعلانات-------------------------------------------------------
        Expanded(
          child: gradientContainer(
            130,
            buttoms(
              context,
              'الاعلانات',
              12,
              white,
              () {},
            ),
            height: 
          ),
        ),

        SizedBox(width: 17.w),
//الاهداءات-------------------------------------------------------
        Expanded(
          child: gradientContainer(
            130,
            buttoms(
              context,
              'الاهداءات',
              12,
              white,
              () {},
            ),
          ),
        ),

        SizedBox(width: 17.w),
//المساحة الاعلانية-------------------------------------------------------

        Expanded(
          child: gradientContainer(
            130,
            buttoms(
              context,
              'المساحة الاعلانية',
              12,
              white,
              () {},
            ),
          ),
        ),
//-------------------------------------------------------
      ],
    );
  }
}