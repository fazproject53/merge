import 'package:flutter/material.dart';

class Advertisment extends StatefulWidget {
  Advertisment({Key? key}) : super(key: key);

  @override
  State<Advertisment> createState() => _AdvertismentState();
}

class _AdvertismentState extends State<Advertisment> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context,i){
      return const Text("AVD");
    });
  }
}