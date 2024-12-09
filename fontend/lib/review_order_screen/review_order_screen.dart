import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../presentation/my_orders_two_screen/models/my_order_model.dart';
import '../theme/app_decoration.dart';
import '../theme/custom_button_style.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ReviewOrder extends StatefulWidget {
  // String? image;
  // String? name;

  double? rating;

  MyOrderItemModel? orderModel;

  ReviewOrder({Key? key, this.rating, this.orderModel})
      : super(key: key);

  @override
  State<ReviewOrder> createState() => _ReviewOrderState();
}

class _ReviewOrderState extends State<ReviewOrder> {
  TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: ColorfulSafeArea(
        color: appTheme.white,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appTheme.gray10002,
          appBar : CustomAppBar(
              height: getVerticalSize(73),
              leadingWidth: getHorizontalSize(44),
              leading: AppbarImage(
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 20, top: 24, bottom: 25),
                  onTap: () {
                    Get.back();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "Review"),
              styleType: Style.bgFill),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: getPadding(top: 16),
                      child: Container(
                        width: double.infinity,
                        color: appTheme.white,
                        child: Padding(
                          padding: getPadding(all: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: getSize(95),
                                  width: getSize(95),
                                  padding: getPadding(
                                      left: 22,
                                      top: 10,
                                      right: 22,
                                      bottom: 10),
                                  decoration: AppDecoration
                                      .fillGray100
                                      .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle
                                          .roundedBorder16),
                                  child: CustomImageView(
                                      imagePath:
                                      ImageConstant
                                          .imgRectangle37614,
                                      height:
                                      getVerticalSize(
                                          75),
                                      width:
                                      getHorizontalSize(
                                          51),
                                      alignment:
                                      Alignment
                                          .center)),
                             SizedBox(height: getVerticalSize(24),),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                        "lbl_rainbow_cupcake"
                                            .tr,
                                        style: CustomTextStyles
                                            .titleMedium16),
                                    SizedBox(height: getVerticalSize(10),),
                                    RatingBar.builder(
                                      initialRating: widget.rating!,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: getSize(20),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: getSize(20),
                                      ),
                                      unratedColor:
                                      appTheme.gray400,
                                      onRatingUpdate: (rating) {
                                        widget.rating = rating;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ),
                    ),
                    SizedBox(height: getVerticalSize(16),),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: appTheme.white,
                        child: Padding(
                          padding: getPadding(left: 20,right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: getVerticalSize(24),),
                              Text("Add photo Or vidio",style: CustomTextStyles.txtSFProDisplayRegular12Black900,),

                              SizedBox(height: getVerticalSize(8),),
                              Container(
                                width: getSize(177),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(getHorizontalSize(8)),
                                    border: Border.all(color: appTheme.black20)),
                                child: Padding(
                                  padding: getPadding(top: 13,bottom: 13),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgCameraIcon,
                                        height: getSize(20),
                                        width: getSize(20),
                                      ),
                                      SizedBox(width: getHorizontalSize(8),),
                                      Text("Add Photo",style: CustomTextStyles.txtSFProDisplayRegular14PrimaryColor,),
                                    ],
                                  ),
                                )
                              ),
                              SizedBox(height: getVerticalSize(18),),


                              ExpandableText(
                               "Upload photos/videos related to the product like Unboxing, Installation, Product Usage, etc.",
                                expandText:"Learn more",
                                collapseText:" Learn less",
                                maxLines: 2,
                                linkColor: Colors.blue,
                                style: CustomTextStyles.txtFootnoteGray700
                              ),
                              SizedBox(height: getVerticalSize(32),),
                              Text("Write a Review",style: CustomTextStyles.txtSFProDisplayRegular12Black900,),
                              SizedBox(height: getVerticalSize(6),),
                              TextFormField(
                                maxLines: 4,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: appTheme.black20, width: 1),
                                      borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: appTheme.black20, width: 1),
                                      borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: appTheme.black20, width: 1),
                                      borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: appTheme.black20, width: 1),
                                      borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                                    ),
                                    hintText: "Type here...",
                                    hintStyle: CustomTextStyles.bodyHintStyle),
                                controller: reviewController,
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: getVerticalSize(20),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: getPadding(left: 20,right: 20,bottom: 40),
                child: CustomElevatedButton(
                    height: getVerticalSize(56),
                    text: "Submit",
                    margin: getMargin(top: 40),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle:
                    CustomTextStyles.titleMediumOnPrimaryBold,
                    onTap: () async{
                      if (reviewController.text.isEmpty) {
                        return showCustomToast("Please enter review");
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              insetPadding:getPadding(left: 20,right: 20),
                              contentPadding: getPadding(left: 20,right: 20),
                              content: Padding(
                                padding: getPadding(top: 42,bottom: 42),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(svgPath: ImageConstant.imgThankYouIcon,
                                    height: getSize(127),
                                    width: getSize(127),),

                                    SizedBox(height: getVerticalSize(32),),
                                    Text("Thank you",
                                        style: theme.textTheme.headlineMedium),
                                    SizedBox(height: getVerticalSize(8),),
                                    Padding(
                                      padding: getPadding(left: 41,right: 41),
                                      child:
                                      Text(" Thanks for spending your valuable time",
                                          style: theme.textTheme.bodyLarge,textAlign: TextAlign.center),
                                    ),


                                    CustomElevatedButton(
                                      onTap: (){
                                        Get.back();
                                      },
                                        height: getVerticalSize(56),
                                        // width: getHorizontalSize(178),
                                        text: "Ok",
                                        margin: getMargin(top: 16, bottom: 5,left: 20,right: 20),
                                        buttonStyle: CustomButtonStyles.fillPrimary,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumOnPrimaryBold)




                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    }),
              ),




              //
              // getCustomButton(S.of(context).submit, () async {
              //
              //
              //   // Get.back();
              //   // Get.back();
              // }).paddingOnly(bottom: 30.h, left: 20.h, right: 20.h)
            ],
          ),
        ),
      ),
    );
  }
}
