
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/theme_helper.dart';
import '../models/chipviewtag_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewtagItemWidget extends StatelessWidget {
  ChipviewtagItemWidget(
    this.chipviewtagItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChipviewtagItemModel chipviewtagItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          left: 19,
          right: 19,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewtagItemModelObj.tagTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: chipviewtagItemModelObj.isSelected.value
                ?appTheme.white
                : appTheme.gray800,
            fontSize: getFontSize(
              17,
            ),
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: chipviewtagItemModelObj.isSelected.value,
        backgroundColor: appTheme.white,
        selectedColor: appTheme.gray800,
        shape: chipviewtagItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black900,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
              ),
        onSelected: (value) {
          chipviewtagItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
