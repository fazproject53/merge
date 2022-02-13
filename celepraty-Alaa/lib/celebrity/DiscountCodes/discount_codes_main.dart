//import section
import 'package:celepraty/celebrity/DiscountCodes/home_body_discount.dart';
import 'package:flutter/material.dart';
import 'package:celepraty/Models/Methods/method.dart';

class DiscountCodes extends StatelessWidget {
  const DiscountCodes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: drowAppBar("أكواد الخصم"),
        body: const HomeBodyDiscount(),
      ),
    );
  }
}
