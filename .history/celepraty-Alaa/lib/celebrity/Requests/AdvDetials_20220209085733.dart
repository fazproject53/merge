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

      Align(
          alignment: Alignment.bottomCenter,
          child: text(
            context,
            "بقية التفاصيل",
            20,
            deepgrey!,
            fontWeight: FontWeight.bold,
            align: TextAlign.justify,
          )),

      Expanded(
        flex: 1,
        child: container(
            100,
            double.infinity,
            8,
            8,
            white,
            text(
              context,
              "ارغب في طلب اعلان للخدمات التي تقدمها شركة فاز التقنية وارجو منكم قبول الطلب, لدي مجموعة من الخدمات التي اقدمها للعملاء المميزين",
              15,
              grey!,
              fontWeight: FontWeight.bold,
            )),
      ),
//accapt buttom-----------------------------------------------------

      Expanded(
        flex: 1,
        child: container(
            150,
            double.infinity,
            2,
            2,
            white,
            text(
              context,
              "ارغب في طلب اعلان للخدمات التي تقدمها شركة فاز التقنية وارجو منكم قبول الطلب",
              20,
              grey!,
              fontWeight: FontWeight.bold,
            )),
      )

    ]));
  }
}
//
