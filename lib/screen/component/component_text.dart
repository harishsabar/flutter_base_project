import 'package:flutter/material.dart';
import '../../constanta/cons_color.dart';

class TitleView extends StatelessWidget {
  String? text;
  Color? color;
  double? fsize;
  double? lspacing;
  double? height;
  TextAlign? align;
  int? maxLine;
  FontWeight? weight;
  TextDecoration? style;
  TextOverflow? overflow;
  FontStyle? fontStyle;

  TitleView(
      {Key? key,
      this.text,
      this.color,
      this.fsize,
      this.lspacing,
      this.height,
      this.align,
      this.maxLine,
      this.weight,
      this.style,
      this.overflow,
      this.fontStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: align ?? TextAlign.left,
      maxLines: maxLine,
      overflow: maxLine != null ? overflow! : TextOverflow.visible,
      text: TextSpan(
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: fsize ?? 14,
            letterSpacing: lspacing,
            color: color ?? colorBlack,
            height: height,
            fontWeight: weight,
            fontStyle: fontStyle,
            decoration: style,
          ),
          children: <TextSpan>[TextSpan(text: text)]),
    );
  }
}
