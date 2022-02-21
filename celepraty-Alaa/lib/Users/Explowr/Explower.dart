import 'package:celepraty/Models/Methods/classes/GradientIcon.dart';
import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'viewData.dart';

class Explower extends StatefulWidget {
  const Explower({Key? key}) : super(key: key);

  @override
  State<Explower> createState() => _ExplowerState();
}

class _ExplowerState extends State<Explower> {
  bool isSelect = false;
  int liksCounter = 100;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: drowAppBar("اكسبلور", context),
          body: Padding(
              padding: EdgeInsets.all(12.h),
              child: Column(
                children: [
//icon and text-----------------------------------------------------
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        text(context, "اكسبلور المشاهير", 18, black),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            filter,
                            size: 34.sp,
                          ),
                        )
                      ])),
//view data-----------------------------------------------------

                  Expanded(
                    flex: 6,
                    child: GridView.builder(
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, //عدد العناصر في كل صف
                            crossAxisSpacing: 13.h, // المسافات الراسية
                            childAspectRatio: 0.70, //حجم العناصر
                            mainAxisSpacing: 13.w //المسافات الافقية

                            ),
                        itemBuilder: (context, i) {
                          return viewCard();
                        }),
                  )
                ],
              ))),
    );
  }

//----------------view data method-------------------------------------------------------------------------------
  Widget viewCard() {
    return Card(
        elevation: 10,
        color: black,

        child: Container(

          decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.all(Radius.circular(4.r) ),
              image: DecorationImage(
                image: AssetImage(
                  videoImage,
                ),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: [
//صوره المشهور+الاسم+التصنيف------------------------------------------
              Expanded(
                flex: 2,
                child: Align(
                    alignment: Alignment.topRight,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(explorImage),
                        radius: 25.h,
                      ),
                      title: text(context, "ليجسي", 14, white),
                      subtitle: text(context, "# مطرب", 12, white),
                    )),
              ),
//play viduo--------------------------------------------------------

              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: white.withOpacity(0.12),
                    radius: 25.h,
                    child: IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: GradientIcon(playViduo, 35.sp, gradient())),
                  ),
                ),
              ),

//like icon------------------------------------------
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.r, right: 10.r),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: CircleAvatar(
                      backgroundColor: white.withOpacity(0.88),
                      radius: 20.h,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              isSelect = !isSelect;
                            });
                            if (isSelect) {
                              setState(() {
                                liksCounter++;
                              });
                            }
                          },
                          icon: GradientIcon(
                              isSelect ? like : disLike, 27.sp, gradient())),
                    ),
                  ),
                ),
              ),
//conuter of like------------------------------------------
              Padding(
                padding: EdgeInsets.only(left: 20.r, right: 20.r),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: text(context, "$liksCounter", 15, white,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ));
  }
}
