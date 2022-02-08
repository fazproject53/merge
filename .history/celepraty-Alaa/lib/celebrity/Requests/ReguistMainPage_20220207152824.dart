import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
class RequestMainPage extends StatefulWidget {
  RequestMainPage({Key? key}) : super(key: key);

  @override
  State<RequestMainPage> createState() => _RequestMainPageState();
}

class _RequestMainPageState extends State<RequestMainPage> {
  int? isSelected = 1;

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
               crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                SizedBox(
                  height: 26.h,
                ),
//صف الاختيارات-------------------------------
                drowRowButton(context),
                 SizedBox(
                  height: 42.h,
                ),
//النص-------------------------------

                text(context, "طلبات الاعلانات الخاصة بك", 18, black,
                    fontWeight: FontWeight.bold),

                SizedBox(
                  height: 32.h,
                ),

//الطلبات وفق التصنيف-------------------------------

                Expanded(
                  flex: 4,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: ((context, i) {
                      return drowCell();
                    }),
                  ),
                ),
              ]),
            )));
  }





//Selection----------------------------------------------------------------------
  drowRowButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
//الاعلانات-------------------------------------------------------
        Expanded(
          child: gradientContainer(
            96,
            buttoms(
              context,
              'الاعلانات',
              12,
              white,
              () {},
            ),
            
          ),
        ),

        SizedBox(width: 17.w),
//الاهداءات-------------------------------------------------------
        Expanded(
          child: gradientContainer(
            96,
            buttoms(
              context,
              'الاهداءات',
              12,
              white,
              () {},
            ),
          ),
        ),

        SizedBox(width: 17.w),
//المساحة الاعلانية-------------------------------------------------------

        Expanded(
          child: gradientContainer(
            96,
            buttoms(
              context,
              'المساحة الاعلانية',
              12,
              white,
              () {},
            ),
          ),
        ),
//-------------------------------------------------------
      ],
    );
  }

  Widget drowCell() {
    return SimpleFoldingCell.create(
        // key: _foldingCellKey,
        frontWidget: _buildFrontWidget(),
        innerWidget: _buildInnerWidget(),
        cellSize: Size(MediaQuery.of(context).size.width, 140),
        padding: const EdgeInsets.all(15),
        animationDuration: Duration(milliseconds: 300),
        borderRadius: 10,
        onOpen: () => print('cell opened'),
        onClose: () => print('cell closed'),
      );
  }

  Widget _buildFrontWidget() {
    return Container(
      color: Color(0xFFffcd3c),
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              "CARD TITLE",
              style: GoogleFonts.aldrich(
                color: Color(0xFF2e282a),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
              child: Text(
                "OPEN",
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(80, 40),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInnerWidget() {
    return Container(
      color: Color(0xFFecf2f9),
      padding: EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "CARD TITLE",
              style: GoogleFonts.aldrich(
                color: Color(0xFF2e282a),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "CARD DETAIL",
              style: GoogleFonts.aldrich(
                color: Color(0xFF2e282a),
                fontSize: 40.0,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
              child: Text(
                "Close",
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(80, 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
