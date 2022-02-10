import 'package:celepraty/Models/Methods/method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folding_cell/folding_cell/widget.dart';


class Advertisment extends StatelessWidget {
    final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, i) {
          return SimpleFoldingCell.create(
          key: _foldingCellKey,
          frontWidget: frontWidget(),
          innerWidget: innerWidget(),
          cellSize: Size(double.infinity, 100.h),
          padding:  EdgeInsets.only(left:10.w, right:10.w, top:10.h, bottom:10.h),
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
             _foldingCellKey.currentState?.toggleFold();
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
               _foldingCellKey.currentState?.toggleFold();
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


