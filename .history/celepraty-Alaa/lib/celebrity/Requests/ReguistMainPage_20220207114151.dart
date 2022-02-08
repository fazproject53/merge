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
  int getSelectItem=1;
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
                  child: rowWithButtom(context),
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
  //-----------------------------------------------------------

ListView rowWithButtom(context) {
  return ListView(
    
    scrollDirection: Axis.horizontal,
    children:[ 
      Row(
      children: [
    //--------------------------------
          gradientContainer(
          130,
          buttoms(
            context,
            "الاعلانات",
            12,
            white,
            () {
              // setState(() {
              //   getSelectItem = 1;
              // });
              // print("fallower$isChang");
            },
          ),
          //gradient: getSelectItem==1 ? true : false,
        ),
         SizedBox(width:17.w),
    //--------------------------------
gradientContainer(
          130,
          buttoms(
            context,
            "الاهداءات",
            12,
            white,
            () {
              // setState(() {
              //   getSelectItem = 1;
              // });
              // print("fallower$isChang");
            },
          ),
          //gradient: getSelectItem==1 ? true : false,
        ),
        SizedBox(width:17.w),
        gradientContainer(
          130,
          buttoms(
            context,
            "مساحة اعلانية",
            12,
            white,
            () {
              // setState(() {
              //   getSelectItem = 1;
              // });
              // print("fallower$isChang");
            },
          ),
          //gradient: getSelectItem==1 ? true : false,
        ),
 //--------------------------------

      
      ],
    ),
    ]
  );
}

}

