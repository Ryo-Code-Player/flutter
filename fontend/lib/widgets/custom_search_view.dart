import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.function,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;
  Function? function;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget,
          )
        : searchViewWidget;
  }

  Widget get searchViewWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          onTap:   () {
  // ignore: unnecessary_statements
  function!()??(){};
  },
          controller: controller,
          // focusNode: focusNode ?? FocusNode(),
          // autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.bodyLargeGray700_1,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray700_1,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix ??SizedBox(),
            // Padding(
            //   padding: EdgeInsets.only(
            //     right: getHorizontalSize(
            //       15.00,
            //     ),
            //   ),
            //   child: IconButton(
            //     onPressed: () => controller!.clear(),
            //     icon: Icon(
            //       Icons.clear,
            //       color: Colors.grey.shade600,
            //     ),
            //   ),
            // ),
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ??
            getPadding(
              top: 18,
              right: 18,
              bottom: 18,
            ),
        fillColor: fillColor ?? appTheme.gray10001,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16.00,
                ),
              ),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16.00,
                ),
              ),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16.00,
                ),
              ),
              borderSide: BorderSide.none,
            ),
      );
}
