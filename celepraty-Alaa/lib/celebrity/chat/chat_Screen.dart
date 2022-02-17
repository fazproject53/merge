import 'dart:io';
import 'package:celepraty/Models/Methods/classes/GradientIcon.dart';
import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class chatScreen extends StatefulWidget{
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: drawAppBar( Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [ text(context, 'مروان بابلو', 15, white),SizedBox(width: 10.w,),   CircleAvatar( backgroundColor: white,//backgroundImage: Image.asset('assets/image/featured.png').image,
          )],) , context),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Container(
              ),

            Container(
              decoration:  const BoxDecoration(  color: fillWhite ,border: Border(top: BorderSide(color: purple , width: 2))),
              child: Row(children: [
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Container(
                    margin: EdgeInsets.only(right: 15.w),
                    child: InkWell(onTap: (){}, child: GradientIcon(send, 30, const LinearGradient(
                      begin: Alignment(0.7, 2.0),
                      end: Alignment(-0.69, -1.0),
                      colors: [Color(0xff0ab3d0), Color(0xffe468ca)],
                      stops: [0.0, 1.0],
                    ),),),
                  ),
                ),
                Expanded(
                  child: TextField(
                    onChanged: (value){},
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                        hintText: 'اكتب هنا .....',

                    ),),
                ),
              ],),
            )
          ],),
        ),
      ),
    );
  }
}