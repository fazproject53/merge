import 'package:celepraty/Models/Methods/method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//colors----------------------------------------------------------------
const Color blue = Color(0xFF0AB3D0);
const Color white = Color(0xFFFFFFFF);
const Color pink = Color(0xFFE468CA);
const Color pinkLigth = Color(0xFFFB6580);
const Color purple = Color(0xFF8952EA);
const Color black = Color(0xFF000000);
const Color ligthtBlack = Color(0xFF1D192C);
const Color darkBlue = Color(0xFF39579A);
const Color textBlack = Color(0xFF5C5E6F);
const Color darkWhite = Color(0xFF7B7B8B);
const Color deepBlack = Color(0xFF7477A0);
const Color border = Color(0xFFCED0D2);
var deepblue = Colors.pink[900];
var grey = Colors.grey[500];
var deepgrey = Colors.grey[700];
var amber=Colors.amber[700];
var red=Colors.red[900];
const Color deepwhite = Color(0xFFFAFAFA);
const Color fillWhite = Color(0xFFFAFAFA);
const Color transparent=Colors.transparent;
Color textFieldBlack2 = Color(0xFF0B0B15);

var green = Colors.green;

var normalGrey = Colors.grey;

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
IconData ad = Icons.add_box;
IconData adArea = Icons.input;
IconData arrow = Icons.arrow_back_ios;
IconData attach = Icons.attach_file;
IconData clander = Icons.calendar_today_rounded;
IconData send = Icons.send;
Icon back=Icon(Icons.arrow_back_ios_sharp,color: black,size:30.w);


IconData addNew = Icons.add_circle_rounded;
IconData typeOfDiscount = Icons.local_offer_outlined;
IconData numberOfUsers = Icons.people_outlined;
IconData duration = Icons.timer_outlined;
IconData discountDes = Icons.description_outlined;
IconData removeDiscount = Icons.delete_rounded;
IconData editDiscount = Icons.edit_rounded;
IconData imageIcon = Icons.image;
IconData vieduoIcon = Icons.videocam;
IconData voiceIcon = Icons.keyboard_voice_sharp;
IconData filter = Icons.filter_alt_rounded;
IconData gift =Icons.card_giftcard_rounded;
IconData like=Icons.favorite_outlined;
IconData disLike = Icons.favorite_border;
IconData playViduo = Icons.play_arrow_rounded;
IconData chatIcon = Icons.chat;
IconData homeIcon = Icons.home;
IconData exploreIcon = Icons.explore_outlined;
IconData notificationIcon = Icons.notifications;

//controller name----------------------------------------------------------------
TextEditingController nameConttroller= TextEditingController();
TextEditingController passConttroller=TextEditingController();
TextEditingController emailConttroller=TextEditingController();
TextEditingController countryConttroller=TextEditingController();
TextEditingController catogaryConttroller=TextEditingController();

//image path------------------------------------------------------
String staticPath="assets/image/";
String googelImage=staticPath+"google-logo.png";
String facebookImage=staticPath+"facbok_logo.png";
String avd1=staticPath+"avd1.jpg";
String avd2=staticPath+"avd2.jpg";
String avd3=staticPath+"avd3.jpg";
String avd4=staticPath+"avd4.jpg";
String discount =staticPath+"coupon.png";
String explorImage=staticPath+"user.png";
String videoImage=staticPath+"featured.png";

//lists-------------------------------------------------------------
List<String>countryName=[ "السعودية","الامارات","البحرين","الكويت","المانيا", "ماليزيا","قطر", "الجزائر","لبنان","سنغافورة","تركيا","الصين","فرنسا","الهند","مصر","العراق""الاردن""امريكا""كوريا"];

List<String>adsImage=[
 "assets/image/adv1.jpg" ,
 "assets/image/adv2.jpg" ,
 "assets/image/adv3.jpg" ,
 "assets/image/adv4.jpg"
];

List<String>giftImage=[
 "assets/image/gift1.jpg" ,
 "assets/image/gift2.jpg" ,
 "assets/image/gift3.jpg" ,
 "assets/image/gift5.jpg"
];

List<String>giftType=[
 "عيد ميلاد" ,
 "تخرج" ,
 "عيد الام" ,
 "زواج"
];

//font textScaling
double textScaling = 2.7;

//App bar names------------------------------------------------------
String requestBar="الطلبات";