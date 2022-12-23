import 'package:base_project/constanta/cons_color.dart';
import 'package:base_project/screen/component/component_text.dart';
import 'package:flutter/material.dart';

snackBar(BuildContext context, String message, Color color) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: TitleView(
      text: message,
      maxLine: 1,
      overflow: TextOverflow.ellipsis,
      color: colorWhite,
      weight: FontWeight.w600,
    ),
    backgroundColor: color,
  ));
}
