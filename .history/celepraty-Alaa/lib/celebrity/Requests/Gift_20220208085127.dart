import 'package:flutter/material.dart';
class Gift extends StatefulWidget {
  Gift({Key? key}) : super(key: key);

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
      itemCount: 4,
      itemBuilder: (context,i){
      return const Text("AVD");
    });
  }
}