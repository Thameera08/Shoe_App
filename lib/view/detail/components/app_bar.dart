// ignore_for_file: prefer_const_constructors

import 'package:e_cmmerce/theme/custom_app_theme.dart';
import 'package:e_cmmerce/utils/constants.dart';
import 'package:flutter/material.dart';

PreferredSize? customAppBarDe(ctx) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text("Nike", style: AppThemes.detailsAppBar),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(ctx);
        },
        icon: Icon(
          Icons.arrow_back,
          color: AppConstantsColor.darkTextColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
        ),
      ],
    ),
  );
}
