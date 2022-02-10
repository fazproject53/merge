import 'package:celepraty/Models/Methods/method.dart';
import 'package:celepraty/Models/Variabls/varaibles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folding_cell/folding_cell/widget.dart';

class Advertisment extends StatefulWidget {
  const Advertisment({Key? key}) : super(key: key);

  @override
  State<Advertisment> createState() => _AdvertismentState();
}

class _AdvertismentState extends State<Advertisment> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        color: Colors.red,
        width: double.infinity,
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, i) {
              return body();
            }));

    //  ListView.builder(
    //     itemCount: 4,
    //     itemBuilder: (context, i) {
    //       return Text("ff");
    //       });
  }

  Widget body() {
    return container(180, double.infinity, 0, 0, black, Stack(),
    bottomLeft: 10,
    bottomRight: 10,
    topLeft: 10,
    topRight: 10,
    marginB: 15,
    
    );
  }
}
