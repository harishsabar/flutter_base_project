import 'package:base_project/constanta/cons_color.dart';
import 'package:base_project/constanta/cons_size.dart';
import 'package:flutter/material.dart';

class ComponentTextField extends StatefulWidget {
  final String hint;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  const ComponentTextField(
      {required this.hint,
      required this.textInputType,
      required this.textEditingController});

  @override
  State<ComponentTextField> createState() => _ComponentTextFieldState();
}

class _ComponentTextFieldState extends State<ComponentTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(MARGIN_LARGE, 0, MARGIN_LARGE, MARGIN_MEDIUM),
      decoration: BoxDecoration(
        color: colorGray,
        borderRadius: BorderRadius.circular(MARGIN_LARGE),
      ),
      child: TextField(
        controller: widget.textEditingController,
        keyboardType: widget.textInputType,
        obscureText: widget.textInputType == TextInputType.visiblePassword
            ? _obscureText
            : false,
        style: const TextStyle(
            color: colorTextV2,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w600,
            fontSize: TEXT_MEDIUM),
        decoration: InputDecoration(
            suffixIcon: widget.textInputType == TextInputType.visiblePassword
                ? new GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: new Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  )
                : null,
            fillColor: colorAccent,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
                horizontal: MARGIN_LARGE, vertical: MARGIN_MEDIUM),
            hintText: widget.hint,
            hintStyle: const TextStyle(
                color: colorGrayNav,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w600,
                fontSize: TEXT_MEDIUM)),
      ),
    );
  }
}
