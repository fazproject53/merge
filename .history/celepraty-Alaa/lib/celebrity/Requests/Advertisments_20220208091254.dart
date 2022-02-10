import 'package:celepraty/Models/Methods/method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folding_cell/folding_cell/widget.dart';

import 'Key.dart';

class Advertisment extends StatefulWidget {
  const Advertisment({Key? key}) : super(key: key);

  @override
  State<Advertisment> createState() => _AdvertismentState();
}

class _AdvertismentState extends State<Advertisment> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, i) {
          return SimpleFoldingCell.create(
          key: Keys.advKey,
          frontWidget: frontWidget(),
          innerWidget: innerWidget(),
          cellSize: Size(double.infinity, 100.h),
          padding:  EdgeInsets.only(left:10.w, right:right.w, top:top.h, bottom:bottom.h),
          animationDuration: const Duration(milliseconds: 300),
          borderRadius: 18.r,
        );        }
        );
  }



Widget frontWidget() {
    return Container(
      color: const Color(0xFFffcd3c),
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          InkWell(
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "CARD TITLE",
              ),
            ),
            onTap: () {
              Keys.advKey.currentState?.toggleFold();
            },
          ),
        ],
      ),
    );
  }

  Widget innerWidget() {
    return Container(
      color: const Color(0xFFecf2f9),
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
               Keys.advKey.currentState?.toggleFold();
            },
            child: const Align(
              alignment: Alignment.topCenter,
              child: Text(
                "CARD TITLE",
              ),
            ),
          ),
        ],
      ),
    );
  }
}


