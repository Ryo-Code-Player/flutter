import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
    key: key,
  );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeIcon,
      title: "Home",
      type: BottomBarEnum.Home, selectedicon: ImageConstant.imgHomeIconSelected,
    ),

    BottomMenuModel(
        icon: ImageConstant.imgCategoryIcon,
        title: "Categories",
        type: BottomBarEnum.Favourite,
        selectedicon: ImageConstant.imgCategoryIconSelected
    ),
    BottomMenuModel(
        icon: ImageConstant.imgCartIcon,
        title: "Cart",
        type: BottomBarEnum.Cart,
        selectedicon: ImageConstant.imgCartIconSelected
    ),
    BottomMenuModel(
      icon: ImageConstant.imgProfileIcon,  // Thay đổi icon thành quyển sách
      title: "Blog",
      type: BottomBarEnum.Blog,
      selectedicon: ImageConstant.imgProfileIcon,  // Icon khi chọn
    ),
    BottomMenuModel(
        icon: ImageConstant.imgProfileIcon,
        title: "Profile",
        type: BottomBarEnum.Profile,
        selectedicon: ImageConstant.imgProfileIconSelected
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.white,
      ),
      child:GetBuilder<CustomBottomBarController>(
        init: CustomBottomBarController(),
        builder:(controller) =>  BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: controller.selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getSize(38),
                    width: getSize(38),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle),
                    child: Padding(
                      padding: getPadding(all: 9),
                      child: CustomImageView(
                        svgPath: bottomMenuList[index].icon,
                        // color: ColorConstant.indigo800,
                      ),
                    ),),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              activeIcon:





              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [


                  Container(
                    height: getSize(38),
                    width: getSize(38),
                    decoration: BoxDecoration(
                        color: appTheme.gray200,
                        shape: BoxShape.circle),
                    child: Padding(
                      padding: getPadding(all: 9),
                      child: CustomImageView(
                        svgPath: bottomMenuList[index].selectedicon,
                        color: appTheme.buttonColor,
                      ),
                    ),),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                        bottomMenuList[index].title ?? "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:CustomTextStyles.txtSFProDisplayRegular12Black900,
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            controller.getIndex(index);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Cart,
  Favourite,
  Profile,
  Blog,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.selectedicon,
    this.title,
    required this.type,
  });

  String icon;
  String selectedicon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}








class CustomBottomBarController extends GetxController{
  int selectedIndex = 0;
  getIndex(int index){
    selectedIndex = index;
    update();
  }
}