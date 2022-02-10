import 'package:celepraty/Models/Methods/method.dart';
import 'package:flutter/material.dart';
class Gift extends StatefulWidget {
  const Gift({Key? key}) : super(key: key);

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
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
    180,double.infinity, 18,18, Colors.amber,
    Stack(),
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
