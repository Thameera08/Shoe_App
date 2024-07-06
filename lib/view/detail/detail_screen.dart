// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:e_cmmerce/models/shoe_model.dart';
import 'package:e_cmmerce/view/detail/components/app_bar.dart';
import 'package:e_cmmerce/view/detail/components/body.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class DetailScreen extends StatelessWidget {
  ShoeModel model;
  bool isComeFromMoreSection;
  DetailScreen({required this.model,required this.isComeFromMoreSection});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: AppConstantsColor.backgroundColor,
          appBar: customAppBarDe(
            context,
          ),
          body: DetailsBody(
            model: model,
            isComeFromMoreSection: isComeFromMoreSection,
          )),
    );
  }
}
