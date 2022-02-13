import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:celepraty/celebrity/DiscountCodes/code_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeCard extends StatelessWidget {
  final int itemIndex;
  final CodeInfo codeInfo;

  const CodeCard({Key? key, required this.itemIndex, required this.codeInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      height: 130.h,
      child: InkWell(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              //The height of the white small box
              height: 130.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.r),
                color: Colors.white,
                //Add Shadow
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12),
                ],
              ),
            ),
            //------------------------------------------------------------------
            //put image inside the container 
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                height: 130,
                width: 170,
                child: Image.asset(googelImage,
                  fit: BoxFit.cover, color: Colors.black.withOpacity(0.2)),
                ),)

            //------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}
