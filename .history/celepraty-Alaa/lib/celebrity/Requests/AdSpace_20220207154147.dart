import 'package:flutter/material.dart';

class FoldingCellSimpleDemo extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2e282a),
      alignment: Alignment.topCenter,
      child: SimpleFoldingCell.create(
        key: _foldingCellKey,
        frontWidget: _buildFrontWidget(),
        innerWidget: _buildInnerWidget(),
        cellSize: Size(MediaQuery.of(context).size.width, 140),
        padding: EdgeInsets.all(15),
        animationDuration: Duration(milliseconds: 300),
        borderRadius: 10,
        onOpen: () => print('cell opened'),
        onClose: () => print('cell closed'),
      ),
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
              child:const  Text(
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
      color: const Color(0xFFecf2f9),
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
        const  Align(
            alignment: Alignment.topCenter,
            child: Text(
              "CARD TITLE",
              
            ),
          ),
       const   Align(
            alignment: Alignment.center,
            child: Text(
              "CARD DETAIL",
              
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