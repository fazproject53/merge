import 'package:flutter/material.dart';
class AdSpace extends StatefulWidget {
 const  AdSpace({Key? key}) : super(key: key);

  @override
  State<AdSpace> createState() => _AdSpaceState();
}

class _AdSpaceState extends State<AdSpace> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context,i){
      return const Text("S");
    });
  }
}