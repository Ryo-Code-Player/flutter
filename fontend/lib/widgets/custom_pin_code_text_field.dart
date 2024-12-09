import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.margin,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: PinCodeTextField(
          appContext: context,
          controller: controller,
          length: 4,
          keyboardType: TextInputType.number,
          textStyle: textStyle ?? theme.textTheme.headlineSmall,
          hintStyle: hintStyle ?? theme.textTheme.headlineSmall,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          pinTheme: PinTheme(
            fieldHeight: getHorizontalSize(
              50.00,
            ),
            fieldWidth: getHorizontalSize(
              48.00,
            ),
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
            inactiveColor: appTheme.gray700,
            activeColor: appTheme.gray700,
            selectedColor: Colors.transparent,
          ),
          onChanged: (value) => onChanged(value),
          validator: validator,
        ),
      );
}
