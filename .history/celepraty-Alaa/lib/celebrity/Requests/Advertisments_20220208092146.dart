import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell/widget.dart';

class Advertisment extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  Advertisment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: )
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