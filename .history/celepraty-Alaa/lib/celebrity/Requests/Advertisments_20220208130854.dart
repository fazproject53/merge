import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';


class Advertisment extends StatefulWidget {
  const Advertisment({Key? key}) : super(key: key);

  @override
  State<Advertisment> createState() => _AdvertismentState();
}

class _AdvertismentState extends State<Advertisment> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, i) {
                return body();
              }),
    );
  }

  Widget body() {
    return container(
    200,double.infinity, 18,18, Colors.red,
    Column(
      children: [
         Expanded(
          flex: 2,
         child:Container(
         color: Colors.white,
         decoration: BoxDecoration,
         ),
         
         ),
         Expanded(
           flex: 1,
         child:Placeholder())
      ],
    ),
    bottomLeft: 10,
    bottomRight: 10,
    topLeft: 10,
    topRight: 10,
    marginB: 15,
    blur: 5,
   marginT: 5
   
    );
  }
}