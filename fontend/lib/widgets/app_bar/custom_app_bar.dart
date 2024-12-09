import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? getVerticalSize(27),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? getVerticalSize(27),
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Container(
          height: getVerticalSize(73),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
          ),
        );
      case Style.bgFillWhiteA700:
        return Container(
          height: getVerticalSize(
            81,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.white,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill,
  bgFillWhiteA700
}
