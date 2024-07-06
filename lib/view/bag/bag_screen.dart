// ignore_for_file: use_key_in_widget_constructors

import 'package:e_cmmerce/utils/constants.dart';
import 'package:e_cmmerce/view/bag/widget/body.dart';
import 'package:flutter/material.dart';


class MyBagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        body: BodyBagView(),
      ),
    );
  }
}
