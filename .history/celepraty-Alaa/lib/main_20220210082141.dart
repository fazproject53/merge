import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';

import 'celebrity/Requests/Ads/AdSpace.dart';
import 'celebrity/Requests/ReguistMainPage.dart';



void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // i cant hear u
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: const Size(413, 763),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: "Cairo",
              colorScheme: ColorScheme.fromSwatch().copyWith(primary: pinkLigth),),
            home: RequestMainPage()
            //----------------------------------
          ),
      ),
    );
  }
}

/*

import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

class FoldingCellSimpleDemo extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  FoldingCellSimpleDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF2e282a),
        alignment: Alignment.topCenter,
        child: SimpleFoldingCell.create(
          key: _foldingCellKey,
          frontWidget: _buildFrontWidget(),
          innerWidget: _buildInnerWidget(),
          cellSize: Size(MediaQuery.of(context).size.width, 180),
          padding: const EdgeInsets.all(15),
          animationDuration: const Duration(milliseconds: 300),
          borderRadius: 10,
        ),
      ),
    );
  }

  Widget _buildFrontWidget() {
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

  Widget _buildInnerWidget() {
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

*/