import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../config/themConfig.dart';

class NavTextWidget extends StatelessWidget {
  final String title;
  const NavTextWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      // style: Get.isDarkMode
      //     ? darkTheme.appBarTheme.titleTextStyle
      //     : lightTheme.appBarTheme.titleTextStyle,
    );
  }
}
