import 'package:celepraty/Models/Methods/method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//colors----------------------------------------------------------------
const Color blue = Color(0xFF0AB3D0);
const Color white = Color(0xFFFFFFFF);
const Color deepwhite = Color(0xFFFAFAFA);
const Color pink = Color(0xFFE468CA);
const Color pinkLigth = Color(0xFFFB6580);
const Color purple = Color(0xFF8952EA);
const Color black = Color(0xFF000000);
const Color ligthtBlack = Color(0xFF1D192C);
const Color darkBlue = Color(0xFF39579A);
const Color textBlack = Color(0xFF5C5E6F);
const Color darkWhite = Color(0xFF7B7B8B);
const Color deepBlack = Color(0xFF7477A0);


const Color transparent=Colors.transparent;
Color textFieldBlack2 = Color(0xFF0B0B15);


//Icons name----------------------------------------------------------------
IconData nameIcon=Icons.person;
IconData passIcon=Icons.lock_outline;
IconData emailIcon=Icons.email_outlined;
IconData countryIcon=Icons.flag_rounded;
IconData catogaryIcon=Icons.reduce_capacity_rounded;
IconData price =Icons.attach_money;
IconData money =Icons.credit_card;
IconData support =Icons.headset_mic;
IconData orders =Icons.campaign;
IconData invoice =Icons.receipt;
IconData store =Icons.store;
IconData copun = Icons.redeem;
IconData scheduale = Icons.event_available;
IconData studio = Icons.emoji_emotions;
IconData pages = Icons.pages;
IconData block = Icons.block;
IconData chat = Icons.chat_bubble_outline;
IconData logout = Icons.logout;
IconData copyRight = Icons.copyright;
Icon back=Icon(Icons.arrow_back_ios_sharp,color: black,size:30.w);
//Icons name----------------------------------------------------------------


//controller name----------------------------------------------------------------
TextEditingController nameConttroller= TextEditingController();
TextEditingController passConttroller=TextEditingController();
TextEditingController emailConttroller=TextEditingController();
TextEditingController countryConttroller=TextEditingController();
TextEditingController catogaryConttroller=TextEditingController();

//App bar names------------------------------------------------------
String requestBar="الطلبات";



//image path------------------------------------------------------
String staticPath="assets/image/";
String googelImage=staticPath+"google-logo.png";
String facebookImage=staticPath+"facbok_logo.png";
String avd1=staticPath+"avd1.jpg";
String avd2=staticPath+"avd2.jpg";
String avd3=staticPath+"avd3.jpg";
String avd4=staticPath+"avd4.jpg";

//country list-------------------------------------------------------------
List<String>countryName=[ "السعودية","الامارات","البحرين","الكويت","المانيا", "ماليزيا","قطر", "الجزائر","لبنان","سنغافورة","تركيا","الصين","فرنسا","الهند","مصر","العراق""الاردن""امريكا""كوريا"];
//font textScaling
double textScaling = 2.7;

//Request page virable name------------------------------------------------------
