import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
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

  final bool? obscureText;

  final TextInputAction? textInputAction;

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

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          cursorColor: theme.colorScheme.primary,
          controller: controller,
          // focusNode: focusNode ?? FocusNode(),
          // autofocus: autofocus!,
          style: textStyle ?? theme.textTheme.bodyLarge,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: hintStyle ?? CustomTextStyles.bodyHintStyle,
        prefixIcon: prefix,
    errorStyle: CustomTextStyles.bodyErrorStyle,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ??
            getPadding(
              left: 16,
              top: 18,
              right: 16,
              bottom: 18,
            ),
        fillColor: fillColor ?? theme.colorScheme.onPrimary,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        ),
        borderSide: BorderSide(
          color: appTheme.gray300,
          width: 1,
        ),
      );
  static OutlineInputBorder get fillBlueGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillOnPrimary => OutlineInputBorder(
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillGrayTL12 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillGrayTL8 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        borderSide: BorderSide.none,
      );
}
