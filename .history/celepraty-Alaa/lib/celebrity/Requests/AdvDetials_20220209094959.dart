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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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

        Container(
          color: deepwhite,
          margin: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 8.w, top: 8.w),
          child: Align(
              alignment: Alignment.bottomRight,
              child: text(
                context,
                "بقية التفاصيل",
                20,
                deepgrey!,
                fontWeight: FontWeight.bold,
                align: TextAlign.justify,
              )),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: deepwhite,
            margin: EdgeInsets.all(6.w),
            child: text(
              context,
              "ارغب في طلب اعلان للخدمات التي تقدمها شركة فاز التقنية وارجو منكم قبول الطلب, لدي مجموعة من الخدمات التي اقدمها للعملاء المميزين",
              15,
              grey!,
              fontWeight: FontWeight.bold,
              align: TextAlign.justify,
            ),
          ),
        ),

//accapt buttom-----------------------------------------------------

        Expanded(
          flex: 1,
          child: text(
            context,
            "ارغب في طلب اعلان للخدمات التي تقدمها شركة فاز التقنية وارجو منكم قبول الطلب, لدي مجموعة من الخدمات التي اقدمها للعملاء المميزين",
            15,
            grey!,
            fontWeight: FontWeight.bold,
            align: TextAlign.justify,
          ),
        )
      ])),
    );
  }
}
//
