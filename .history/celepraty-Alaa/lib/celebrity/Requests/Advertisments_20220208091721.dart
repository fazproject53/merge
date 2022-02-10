import 'package:flutter/material.dart';

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