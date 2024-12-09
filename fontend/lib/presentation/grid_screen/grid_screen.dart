import 'controller/grid_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GridScreen extends GetWidget<GridController> {
  const GridScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
