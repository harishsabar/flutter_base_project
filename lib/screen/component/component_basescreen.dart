import 'package:base_project/constanta/cons_color.dart';
import 'package:base_project/constanta/cons_size.dart';
import 'package:base_project/screen/component/component_text.dart';
import 'package:flutter/material.dart';

class BaseScreenV2 extends StatelessWidget {
  final String? title;
  final Widget? titleWidget;
  final Color? titleColor;
  final String? subTitle;
  final Widget? body;
  final Color? appBarColor;
  final bool? centerTitle;
  final Widget? floatingActionButton;
  final Color? themeColor;
  final Widget? lead;
  final List<Widget>? actions;
  final Widget? bottom;

  const BaseScreenV2(
      {this.title,
      this.titleWidget,
      this.titleColor,
      this.subTitle,
      this.body,
      this.centerTitle,
      this.appBarColor,
      this.floatingActionButton,
      this.actions,
      this.themeColor,
      this.lead,
      this.bottom})
      : super();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorBG,
        appBar: title == null && titleWidget == null
            ? null
            : AppBar(
                primary: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(16),
                  ),
                ),
                centerTitle: centerTitle ?? true,
                titleSpacing:
                    titleWidget == null ? NavigationToolbar.kMiddleSpacing : 0,
                iconTheme: IconThemeData(color: themeColor ?? colorWhite),
                leading: lead,
                elevation: 0,
                backgroundColor: appBarColor ?? colorPrimary,
                actions: actions,
                title: titleWidget ??
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleView(
                          text: title,
                          color: titleColor ?? colorWhite,
                          fsize: TEXT_LARGE,
                          weight: FontWeight.w700,
                        ),
                        subTitle == null
                            ? SizedBox()
                            : TitleView(
                                text: subTitle,
                                color: colorWhite,
                                fsize: 11.0,
                                weight: FontWeight.w500,
                              ),
                      ],
                    ),
              ),
        body: body,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
