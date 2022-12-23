import 'package:flutter/material.dart';

final app = Helpers.I;

class Helpers {
  static Helpers get I => Helpers._();

  Helpers._();

  GlobalKey<NavigatorState> get navKey => GlobalKey<NavigatorState>();

  BuildContext get context => navKey.currentContext!;

  double get height => MediaQuery.of(context).size.height;

  double get width => MediaQuery.of(context).size.width;
}
