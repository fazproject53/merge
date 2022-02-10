import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/celebrity/DiscountCodes/code_card.dart';
import 'package:celepraty/celebrity/DiscountCodes/code_info.dart';
import 'package:flutter/material.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeBodyDiscount extends StatefulWidget {
  const HomeBodyDiscount({Key? key}) : super(key: key);

  @override
  _HomeBodyDiscountState createState() => _HomeBodyDiscountState();
}

class _HomeBodyDiscountState extends State<HomeBodyDiscount> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
           SizedBox(
            height: 15.h,
          ),
          Expanded(
              child: Stack(
                children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 100.w,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                            child: gradientContainerNoborder(
                              120.0,
                              buttoms(context,
                                "انشاء كود جديد",
                                15,
                                white, () {},
                                evaluation: 0,
                              ),
                              height: 30,
                            ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                    ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 40.h, right: 20.w),
                      child: text(context, "الاكواد الحالية", 25, ligthtBlack),
                    ),
                  ),
                  //ListView
                  Padding(
                    padding:  EdgeInsets.only(top: 80.h),
                    child: ListView.builder(
                      itemCount: codeList.length,
                      itemBuilder: (context, index) => CodeCard(itemIndex: index, codeInfo: codeList[index],
                      ),),
                  ),
                ],
              ),),
        ],
      ),

    );
  }
}
