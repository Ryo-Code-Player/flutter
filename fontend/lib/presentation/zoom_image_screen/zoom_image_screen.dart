import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import '../../core/utils/zoom_widget.dart';
import 'controller/zoomimage_screen_controller.dart';

class ZoomImageScreen extends StatefulWidget {
  ZoomImageScreen({ Key? key}) : super(key: key);


  @override
  State<ZoomImageScreen> createState() => _ZoomImageScreenState();
}

class _ZoomImageScreenState extends State<ZoomImageScreen> {
  ZoomImageScreenController zoomImageScreenController =
  Get.put(ZoomImageScreenController());
  PageController? pcontroller;


  @override
  void initState() {
    super.initState();
    pcontroller =
        PageController(initialPage: zoomImageScreenController.currentPage);
  }

  // Future<void> share() async {
  //   await FlutterShare.share(
  //       title: '${storageController.selectedProduct!.name}',
  //       text: '',
  //       linkUrl: 'https://devsite.clientdemoweb.com/plantshop/product/' +
  //           storageController.selectedProduct!.name +
  //           "/",
  //       chooserTitle: 'Example Chooser Title');
  // }

  @override
  Widget build(BuildContext context) {
    // setStatusBarColor(regularBlack);
    return WillPopScope(
      child: Scaffold(
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: GetBuilder(
            init: ZoomImageScreenController(),
            builder: (controller) => Stack(
              children: [
                Center(
                  child: Stack(
                    children: [
                      PageView.builder(
                          physics: BouncingScrollPhysics(),
                          controller: pcontroller,
                          onPageChanged: (value) {
                            controller.onPageChange(value);
                          },
                          itemBuilder: (context, index) {
                            return Center(
                              child: Zoom(
                                  backgroundColor: appTheme.white,
                                  maxZoomHeight: getSize(534),
                                  initTotalZoomOut: false,
                                  child: CustomImageView(
                                      height: getSize(261),
                                      width: getSize(261),
                                      imagePath: ImageConstant.imgBg
                                  )



                                ),
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount:3),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(left: 20,right: 20,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Padding(
                            padding: getPadding(right: 20),
                            child:
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getSize(24),
                              width: getSize(24),
                            )
                          )),
                      Row(children: [
                        GestureDetector(
                          onTap: () {

                          },
                          child: Container(

                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: appTheme.white),
                            child: CustomImageView(
                              height: getSize(24),
                              width: getSize(24),
                              svgPath: ImageConstant.imgSearchBlack900,
                            ),
                          ),
                        ),
                      SizedBox(width: getHorizontalSize(16),),
                        GestureDetector(
                          onTap: () {
                            // homeMainScreenController.change(2);
                            // Get.to(HomeMainScreen());
                          },
                          child: Stack(
                            children: [
                              Container(

                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: appTheme.white),
                                child:CustomImageView(
                                    height: getSize(24),
                                    width: getSize(24),
                                  svgPath:  ImageConstant.imgLockBlack900,
                                )
                              ),
                              // Container(
                              //   margin:
                              //  getPadding(left: 27),
                              //   height:getSize(20),
                              //   width:getSize(20),
                              //   decoration: BoxDecoration(
                              //       shape: BoxShape.circle,
                              //       color: appTheme.buttonColor),
                              //   child: Center(
                              //       child: Text("3",style: CustomTextStyles.txtBody.copyWith(
                              //         color: appTheme.white
                              //       ),),
                              //
                              //
                              //      ),
                              // )

                            ],
                          ),
                        )
                      ])
                    ],
                  ),
                ),

                Padding(
                  padding: getPadding(bottom: 89),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                           3, (index) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: getSize(8),
                            width: index == zoomImageScreenController.currentPage
                                ? getSize(18)
                                : getSize(8),
                            margin: getMargin(left: 5,top: 30,bottom: 30,right: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(getHorizontalSize(5)),
                                color: (index ==
                                    zoomImageScreenController.currentPage)
                                    ? appTheme.buttonColor
                                    : appTheme.buttonColor.withOpacity(0.3)),
                          );
                        })),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      onWillPop: () {
        return Future.value(true);
      },
    );
  }
}
