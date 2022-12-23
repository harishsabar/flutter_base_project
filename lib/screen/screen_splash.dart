import 'dart:async';

import 'package:base_project/constanta/cons_route.dart';
import 'package:base_project/constanta/cons_size.dart';
import 'package:base_project/constanta/cons_text.dart';
import 'package:base_project/utils/util_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constanta/cons_color.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    checkingSession();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  buildBody() {
    return Container(
      padding: EdgeInsets.all(MARGIN_LARGE),
      color: colorWhite,
      child: const Center(
        child: Image(image: AssetImage('assets/images/logo.png')),
      ),
    );
  }

  void checkingSession() {
    Timer(const Duration(seconds: 1), () {
      if (StorageUtil.instance.getBool(PREF_STATUSLOGIN) != null) {
        if (StorageUtil.instance.getBool(PREF_STATUSLOGIN)!) {
          Navigator.popAndPushNamed(context, RouteNames.routeMain);
        } else {
          StorageUtil.instance.clear();
          Navigator.popAndPushNamed(context, RouteNames.routeLogin);
        }
      } else {
        StorageUtil.instance.clear();
        Navigator.popAndPushNamed(context, RouteNames.routeLogin);
      }
    });
  }
}
