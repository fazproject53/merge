import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class blockList extends StatefulWidget{
  _blockListState createState() => _blockListState();
}

class _blockListState extends State<blockList> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: drowAppBar('المحظورين'),
      body: Stack(children: [

        paddingg( 10,10,20,ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
            return paddingg(8,8,5 ,SizedBox(
                height: 150.h,
                width: 300.w,
                child:  Card(
                  elevation: 10,
                  color: white,
                  child: paddingg(0,0,12,Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      paddingg(15,35,0 ,Container(
                        alignment: Alignment.centerRight,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child:Image.asset('assets/image/user.png', fit: BoxFit.cover,),),
                      ),),

                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h,),
                            text(context,'مروان بابلو', 14, black),
                            text(context,'وقت الحظر: 12/10/2021', 14, black),
                            text(context,'الحظر بسبب الازعاج', 14, black),
                            SizedBox(height: 10,),
                            Row(children: [
                              gradientContainerNoborder2(80, 33,buttoms(context,  'فك الحظر',12, white,(){}),),
                              SizedBox(width: 10,),
                    InkWell(
                      child: Container(
                          width: 80.w,
                          height: 33.h,
                          decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: black)),
                        child: Center(child: text(context, 'ابلاغ', 12, black,align: TextAlign.center)),
                         ), onTap: (){}),

                            ],),
                          ],
                        ),


                      ],
                    ),
                  ),),
              ),
            );
          },),
        )
      ],),
        ),

      );
  }
}