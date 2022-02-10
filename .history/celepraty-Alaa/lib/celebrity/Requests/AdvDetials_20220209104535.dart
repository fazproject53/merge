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
          // appBar: drowAppBar("تفاصيل الطلب"),
          body: Column(children: [
//image-----------------------------------------------------
        Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(9.w),
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 2)],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.r),
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
          child: Row(children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: text(
                  context,
                  "اعلان لمنتجات تجميل",
                  20,
                  deepgrey!,
                  fontWeight: FontWeight.bold,
                  align: TextAlign.justify,
                )),
            ),
              Expanded(
                child: Align(
                alignment: Alignment.bottomRight,
                child: text(
                  context,
                  "اعلان لمنتجات تجميل",
                  20,
                  deepgrey!,
                  fontWeight: FontWeight.bold,
                  align: TextAlign.justify,
                )),
              ),
              Expanded(
                child: Align(
                alignment: Alignment.bottomRight,
                child: text(
                  context,
                  "اعلان لمنتجات تجميل",
                  20,
                  deepgrey!,
                  fontWeight: FontWeight.bold,
                  align: TextAlign.justify,
                )),
              ),
              Expanded(
                child: Align(
                alignment: Alignment.bottomRight,
                child: text(
                  context,
                  "اعلان لمنتجات تجميل",
                  20,
                  deepgrey!,
                  fontWeight: FontWeight.bold,
                  align: TextAlign.justify,
                )),
              ),
          ],)
        ),
 //-------------------------------       
        Expanded(
          flex: 1,
          child: Container(
            color: deepwhite,
            margin: EdgeInsets.all(8.w),
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

        Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.all(20),
            child: Row(children: [
              Expanded(
                flex: 3,
                child: gradientContainer(
                  double.infinity,
                  buttoms(
                    context,
                    "قبول الطلب",
                    15,
                    white,
                    () {},
                    evaluation: 1,
                  ),
                  height: 50,
                ),
//chat icon-------------------------------------------------
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                flex: 1,
                child: gradientContainer(
                  double.infinity,
                  InkWell(
                      onTap: () {
                        print("go to chat home");
                      },
                      child: const Icon(Icons.chat_outlined, color: pink)),
                  height: 50,
                  gradient: true,
                ),
              )
            ]))
      ])),
    );
  }
}
//
