// ignore_for_file: prefer_const_constructors

import 'package:e_cmmerce/utils/constants.dart';
import 'package:e_cmmerce/view/profile/widget/appbar.dart';
import 'package:e_cmmerce/view/profile/widget/body.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        appBar: customAppBarProfile(),
        body: BodyProfile(),
      ),
      
    );
  }
}