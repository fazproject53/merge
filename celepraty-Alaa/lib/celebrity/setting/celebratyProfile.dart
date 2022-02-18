
import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:celepraty/celebrity/blockList.dart';
import 'package:celepraty/celebrity/chat/chatsList.dart';
import 'package:celepraty/celebrity/setting/profileInformation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class celebratyProfile extends StatefulWidget{
  _celebratyProfileState createState() => _celebratyProfileState();
}

class _celebratyProfileState extends State<celebratyProfile>{
  final labels = ['المعلومات الشخصية','الفوترة','الرصيد','التسعير','الطلبات','علامتك التجارية','اكواد الخصم','جدول المواعيد','التفاعلات','الشروط والاحكام','قائمة الحظر'
    ,'المحادثات','الدعم','تسجيل الخروج'];
  final List<IconData> icons = [nameIcon , invoice, money,price,orders,store,copun, scheduale,studio,pages,block,chat,support,logout];
  final List<Widget> page = [profileInformaion(),profileInformaion(), profileInformaion(),profileInformaion(),profileInformaion(),profileInformaion(),profileInformaion(),profileInformaion()
       , profileInformaion(),profileInformaion(),blockList(),chatsList(),profileInformaion(),profileInformaion()];


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drowAppBar('حسابي', context),
      body:Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                children: [
                  //======================== profile header ===============================

                  Column(
                    children: [
                       SizedBox(height: 30.h,),
                      padding(8, 8 ,Container(height:56.h, width: 56.w ,child: CircleAvatar( radius: 48.r, child: Image.network('http://assets.stickpng.com/images/585e4bf3cb11b227491c339a.png'))),),
                      padding(8, 8,text(context,'مروان بابلو', 20, black, fontWeight: FontWeight.bold, family: 'Cairo'),),
                      padding(8, 8,text(context,'الفئة : مطرب ', 12, textBlack, family: 'Cairo' ),),
                        paddingg(20, 20, 3, text(context, ' ليجسي مطرب يعيش بمصر اشتهر مؤخرا باغاني الراب الممزوجة واشتهر مؤخرا باغنيتة مفيش مانع التي حققت نجاح كبير جدا',
                                12, textBlack, family: 'Cairo', align: TextAlign.center),

                       ),


                    ],
                  ), //profile image


                  //=========================== buttons listView =============================


             SingleChildScrollView(
               child: Container(
                 child: paddingg(8, 0, 8,
                   ListView.separated(
                     primary: false,
                     shrinkWrap:true,
                     itemBuilder:  (context, index){
                     return MaterialButton(
                     onPressed: (){Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => page[index] ),
                     );},
                     child: addListViewButton(labels[index], icons[index],));
                     },
                       separatorBuilder: (context, index) => const Divider(),
                       itemCount: labels.length,),

                     ),
                 ),
               ),


                  //========================== social media icons row =======================================

                  SizedBox(height: 50,),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:[
                      padding(8, 8,  Container(width: 30, height:30,child: Image.asset('assets/image/icon- faceboock.png',)),),
                      padding(8, 8,  Container(width: 30, height:30,child: Image.asset('assets/image/icon- insta.png',),),),
                      padding(8, 8,  Container(width: 30, height:30,child:  Image.asset('assets/image/icon- snapchat.png',),),),
                      padding(8, 8, Container(width: 30, height:30,child:  Image.asset('assets/image/icon- twitter.png',),),),
          ]),

            paddingg(8, 8, 12,Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(copyRight, size: 14,),
                text(context,'حقوق الطبع والنشر محفوظة', 14, black  ),
              ],
            ),),
                  SizedBox(height: 20.h,)

                ]),
          ),
        ),
      ),

    );
  }
}


