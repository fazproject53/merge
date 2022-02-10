import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class gifttingForm extends StatefulWidget{
  _gifttingFormState createState() => _gifttingFormState();
}

class _gifttingFormState extends State<gifttingForm>{
  final _formKey = GlobalKey<FormState>();
  final TextEditingController mycontroller = new TextEditingController();
static DateTime current = DateTime.now();
  String ocassion = 'المناسبة';
  var items2 = ['المناسبة', 'Item 2', 'Item 3', 'Item 4', 'Item 5',];
   static bool check =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [Container(height: 365.h,
               width: 1000.w,
               child: Image.asset('assets/image/featured.png', color: Colors.white.withOpacity(0.60), colorBlendMode: BlendMode.modulate,fit: BoxFit.cover,)),
                 const Padding(
                   padding: EdgeInsets.all(20.0),
                   child: Text('اطلب اهداء \n شخصي من ليجسي ميوزك الان',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: white , fontFamily: 'DINNextLTArabic-Regular-2'), ),
                 ),
              ]),
            Container(
            child: Form(
            key: _formKey,
            child: paddingg(12, 12, 5, Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            SizedBox(height: 20.h,),
              padding(10, 12, Container( alignment : Alignment.topRight,child:  text(context, ' قم بملئ   \n البيانات التالية',18,textBlack,fontWeight: FontWeight.bold,
                family: 'DINNextLTArabic-Regular-2', )),),

    //========================== form ===============================================

              SizedBox(height: 30,),


              paddingg(15, 15, 12,SizedBox(
                height: 45.h,
                child: Container(
                  decoration: BoxDecoration( color: textFieldBlack2.withOpacity(0.70),  borderRadius: BorderRadius.circular(8),),
                  child: DropdownButtonFormField( decoration: InputDecoration.collapsed(hintText: ocassion,),value: ocassion, dropdownColor: textBlack, icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white,), items: items2.map((String items) {
                    return DropdownMenuItem(value: items, child: paddingg(15.w, 15.w, 5.h,Text(items),),);}).toList(),
                    onChanged: (String? newValue) {setState(() {ocassion = newValue!;});},
                    style: TextStyle(color: white, fontSize: 14.sp),
                    isExpanded: true,),),
              ),),

              paddingg(15.w, 15.w, 12.h,textFieldNoIcon(context, 'صاحب الاهداء', 12.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                return 'Please enter some text';} return null;},false),),
              paddingg(15.w, 15.w, 12.h,textFieldNoIcon(context, 'المهدى اليه', 12.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                return 'Please enter some text';} return null;}, false),),

              paddingg(15.w, 15.w, 12.h,textFieldDesc(context, 'تفاصيل الاهداء', 12.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                return 'Please enter some text';} return null;},),),
              paddingg(15.w, 15.w, 12.h,textFieldNoIcon(context, 'ادخل كود الخصم', 12.sp, true, mycontroller,(String? value) {if (value == null || value.isEmpty) {
                return 'Please enter some text';} return null;},true),),


              paddingg(15.w, 15.w, 15.h,SizedBox(height: 45.h,child: InkWell(
                child: gradientContainerNoborder(50.w, Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(scheduale, color: white,),
                    SizedBox(width: 15.w,),
                    text(context, 'تاريخ الاهداء', 15.sp, white, fontWeight: FontWeight.bold),
                  ],
                )),onTap: (){ tableCalendar(context, current);},
              )),),


              paddingg(0,0,12.h, CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: text(context,'عند طلب الاهداء، فإنك توافق على شروط الإستخدام و سياسة الخصوصية الخاصة بـ', 10, black, fontWeight: FontWeight.bold,family:'Cairo'),
                value: check,
                selectedTileColor: black,
                onChanged: (value) {
                  setState(() {
                    setState(() {
                      check = value!;
                    });
                  });
                },),),
              const SizedBox(height: 30,),
              padding(15, 15, gradientContainerNoborder(getSize(context).width,  buttoms(context, 'رفع الطلب', 15, white, (){})),),
              const SizedBox(height: 30,),




    ]),
            ),),),
          ],
        ),
        ),),);


  }

}