import 'package:celepraty/Models/Methods/method.dart';
import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell/widget.dart';

class Advertisment extends StatefulWidget {
  const Advertisment({Key? key}) : super(key: key);

  @override
  State<Advertisment> createState() => _AdvertismentState();
}

class _AdvertismentState extends State<Advertisment> {
    final key = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, i) {
          return drowFolldingCell(key, height, frontWidget, innerWidget);
        });
  }
}
