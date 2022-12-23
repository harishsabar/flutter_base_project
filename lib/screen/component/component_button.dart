import 'package:base_project/constanta/cons_color.dart';
import 'package:base_project/constanta/cons_size.dart';
import 'package:base_project/screen/component/component_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String? title;
  final Color? titleColor;
  final double? titleSize;
  final Color? color;
  final double? borderRadius;
  final double? padding;
  final Function()? function;

  CustomButton(
      {super.key,
      this.title,
      this.function,
      this.color,
      this.titleColor,
      this.borderRadius,
      this.titleSize,
      this.padding});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: widget.function,
        child: TitleView(
          text: widget.title,
          color: widget.color,
          fsize: widget.titleSize,
        ),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(widget.padding!),
            backgroundColor: widget.color,
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius!))),
      ),
    );
  }
}
