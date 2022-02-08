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
  bool isChang = false;
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
                  child: ListView(scrollDirection: Axis.horizontal, children: [
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
                "الاهداءات",
                12,
                white,
                () {
                  isSelec==true;
                  setState(() {
                    
                  });
                },
              ),
               gradient: isSelec ? false : true,),
          SizedBox(width: 17.w),
          gradientContainer(
              130,
              buttoms(
                context,
                "مساحة اعلانية",
                12,
                white,
                () {},
              ),
              gradient:false),
          //--------------------------------
        ],
      ),
    ])
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

  //ListView rowWithButtom(context,select) {
    // return ListView(scrollDirection: Axis.horizontal, children: [
    //   Row(
    //     children: [
    //       //--------------------------------
    //       gradientContainer(
    //           130,
    //           buttoms(
    //             context,
    //             "الاعلانات",
    //             12,
    //             white,
    //             () {
    //               select==false;
    //               setState(() {
                    
    //               });
    //             },
    //           ),
    //           gradient: select ? true : false,),

    //       SizedBox(width: 17.w),
    //       //--------------------------------
    //       gradientContainer(
    //           130,
    //           buttoms(
    //             context,
    //             "الاهداءات",
    //             12,
    //             white,
    //             () {
    //               select==true;
    //               setState(() {
                    
    //               });
    //             },
    //           ),
    //            gradient: select ? false : true,),
    //       SizedBox(width: 17.w),
    //       gradientContainer(
    //           130,
    //           buttoms(
    //             context,
    //             "مساحة اعلانية",
    //             12,
    //             white,
    //             () {},
    //           ),
    //           gradient:false),
    //       //--------------------------------
    //     ],
    //   ),
    // ]);
  //}
}