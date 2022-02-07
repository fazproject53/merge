import 'package:celepraty/Models/Methods/method.dart';
import 'package:flutter/material.dart';

class RequestMainPage extends StatefulWidget {
  RequestMainPage({Key? key}) : super(key: key);

  @override
  State<RequestMainPage> createState() => _RequestMainPageState();
}

class _RequestMainPageState extends State<RequestMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: padding(33, 33, Column(
        cro
        children: const [
         Expanded(
           flex: 1,
           child:  Placeholder(),
           ),
           Expanded(
           flex: 1,
           child:  Placeholder(),
           ),
           Expanded(
           flex: 4,
           child:  Placeholder(),
           ),

        ],
      )),
    );
  }
}