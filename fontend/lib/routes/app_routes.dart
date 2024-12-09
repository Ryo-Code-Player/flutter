import 'package:flutter/cupertino.dart';
import 'package:flutterbekeryapp/presentation/add_a_card_active_screen/add_a_card_active_screen.dart';
import 'package:flutterbekeryapp/presentation/add_a_card_defualt_screen/add_a_card_defualt_screen.dart';
import 'package:flutterbekeryapp/presentation/add_new_address_one_screen/add_new_address_one_screen.dart';
import 'package:flutterbekeryapp/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:flutterbekeryapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:flutterbekeryapp/presentation/blog_detail_screen/blog_detail_screen.dart';
import 'package:flutterbekeryapp/presentation/blog_screen/blog_screen.dart';
import 'package:flutterbekeryapp/presentation/cakes_screen/cakes_screen.dart';
import 'package:flutterbekeryapp/presentation/categories_2_grid_screen/categories_2_grid_screen.dart';
import 'package:flutterbekeryapp/presentation/cup_cake_screen/cup_cake_screen.dart';
import 'package:flutterbekeryapp/presentation/delet_order_screen/delet_order_screen.dart';
import 'package:flutterbekeryapp/presentation/detail_image_screen/detail_image_screen.dart';
import 'package:flutterbekeryapp/presentation/detail_tab_container_screen/detail_tab_container_screen.dart';
import 'package:flutterbekeryapp/presentation/detail_two_screen/detail_two_screen.dart';
import 'package:flutterbekeryapp/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:flutterbekeryapp/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:flutterbekeryapp/presentation/grid_screen/grid_screen.dart';
import 'package:flutterbekeryapp/presentation/home_container_screen/home_container_screen.dart';
import 'package:flutterbekeryapp/presentation/login_with_active_screen/login_with_active_screen.dart';
import 'package:flutterbekeryapp/presentation/my_address_delete_one_screen/my_address_delete_one_screen.dart';
import 'package:flutterbekeryapp/presentation/my_address_empty_screen/my_address_empty_screen.dart';
import 'package:flutterbekeryapp/presentation/my_address_screen/my_address_screen.dart';
import 'package:flutterbekeryapp/presentation/my_cards_details_screen/my_cards_details_screen.dart';
import 'package:flutterbekeryapp/presentation/my_cards_empty_screen/my_cards_empty_screen.dart';
import 'package:flutterbekeryapp/presentation/my_cart_payment_address_edit_screen/my_cart_payment_address_edit_screen.dart';
import 'package:flutterbekeryapp/presentation/my_cart_payment_address_screen/my_cart_payment_address_screen.dart';
import 'package:flutterbekeryapp/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:flutterbekeryapp/presentation/my_coupon_empty_screen/my_coupon_empty_screen.dart';
import 'package:flutterbekeryapp/presentation/my_coupon_one_screen/my_coupon_one_screen.dart';
import 'package:flutterbekeryapp/presentation/my_coupon_screen/my_coupon_screen.dart';
import 'package:flutterbekeryapp/presentation/my_orders_screen/my_orders_screen.dart';
import 'package:flutterbekeryapp/presentation/my_orders_two_screen/my_orders_two_screen.dart';
import 'package:flutterbekeryapp/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:flutterbekeryapp/presentation/notifications_empty_screen/notifications_empty_screen.dart';
import 'package:flutterbekeryapp/presentation/notifications_screen/notifications_screen.dart';
import 'package:flutterbekeryapp/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:flutterbekeryapp/presentation/order_confirm_screen/order_confirm_screen.dart';
import 'package:flutterbekeryapp/presentation/our_speciality_screen/our_speciality_screen.dart';
import 'package:flutterbekeryapp/presentation/payment_screen/payment_screen.dart';
import 'package:flutterbekeryapp/presentation/rating_screen/rating_screen.dart';
import 'package:flutterbekeryapp/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:flutterbekeryapp/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:flutterbekeryapp/presentation/search_screen/search_screen.dart';
import 'package:flutterbekeryapp/presentation/settings_screen/settings_screen.dart';
import 'package:flutterbekeryapp/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:flutterbekeryapp/presentation/splash_screen/splash_screen.dart';
import 'package:flutterbekeryapp/presentation/sweets_screen/sweets_screen.dart';
import 'package:flutterbekeryapp/presentation/top_picks_for_you_screen/top_picks_for_you_screen.dart';
import 'package:flutterbekeryapp/presentation/verification_screen/verification_screen.dart';
import 'package:flutterbekeryapp/presentation/wishlist_empty_screen/wishlist_empty_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../presentation/detail_page/detail_page.dart';
import '../presentation/filter_screen/filter_screen.dart';
import '../presentation/my_cart_one_page/my_cart_one_page.dart';
import '../presentation/privacy_policy_screen/privacy_policy_screen.dart';
import '../presentation/profile_page/profile_page.dart';
import '../presentation/security_screen/security_screen.dart';
import '../presentation/wishlist_page/wishlist_page.dart';
import 'package:flutterbekeryapp/views/register.dart';

class AppRoutes {
  static const String blogGridScreen = '/blogGridScreen';
  static const String splashScreen = '/splash_screen';
  static const String gridScreen = '/grid_screen';
  static const String onboardingOneScreen = '/onboarding_one_screen';
  static const String onboardingOneTwoScreen = '/onboarding_one_two_screen';
  static const String onboardingOneOneScreen = '/onboarding_one_one_screen';
  static const String loginWithErrorScreen = '/login_with_error_screen';
  static const String loginWithActiveScreen = '/login';
  static const String signUpScreen = '/sign_up_screen';
  static const String forgotPasswordScreen = '/forgot_password_screen';
  static const String verificationScreen = '/verification_screen';
  static const String resetPasswordScreen = '/reset_password_screen';
  static const String resetPasswordSuccessScreen =
      '/reset_password_success_screen';
  static const String homePage = '/home_page';
  static const String homeContainerScreen = '/home_container_screen';
  static const String searchScreen = '/search_screen';
  static const String categories2GridScreen = '/categories_2_grid_screen';
  static const String topPicksForYouScreen = '/top_picks_for_you_screen';
  static const String ourSpecialityScreen = '/our_speciality_screen';
  static const String cakesScreen = '/cakes_screen';
  static const String cupCakeScreen = '/cup_cake_screen';
  static const String sweetsScreen = '/sweets_screen';
  static const String filterScreen = '/filter_screen';
  static const String detailPage = '/detail_page';
  static const String detailTabContainerScreen = '/detail_tab_container_screen';
  static const String detailTwoScreen = '/detail_two_screen';
  static const String detailImageScreen = '/detail_image_screen';
  static const String myCartScreen = '/my_cart_screen';
  static const String myCartOnePage = '/my_cart_one_page';
  static const String deletOrderScreen = '/delet_order_screen';
  static const String myCouponEmptyScreen = '/my_coupon_empty_screen';
  static const String myCouponScreen = '/my_coupon_screen';
  static const String myCouponOneScreen = '/my_coupon_one_screen';
  static const String paymentScreen = '/payment_screen';
  static const String addNewAddressScreen = '/add_new_address_screen';
  static const String myCartPaymentAddressScreen =
      '/my_cart_payment_address_screen';
  static const String myCartPaymentAddressEditScreen =
      '/my_cart_payment_address_edit_screen';
  static const String orderConfirmScreen = '/order_confirm_screen';
  static const String wishlistEmptyScreen = '/wishlist_empty_screen';
  static const String wishlistPage = '/wishlist_page';
  static const String profilePage = '/profile_page';
  static const String myProfileScreen = '/my_profile_screen';
  static const String editProfileScreen = '/edit_profile_screen';
  static const String myAddressEmptyScreen = '/my_address_empty_screen';
  static const String addNewAddressOneScreen = '/add_new_address_one_screen';
  static const String myAddressScreen = '/my_address_screen';
  static const String editAddressScreen = '/edit_address_screen';
  static const String myCardsEmptyScreen = '/my_cards_empty_screen';
  static const String addACardDefualtScreen = '/add_a_card_defualt_screen';
  static const String addACardActiveScreen = '/add_a_card_active_screen';
  static const String myCardsDetailsScreen = '/my_cards_details_screen';
  static const String settingsScreen = '/settings_screen';
  static const String notificationsEmptyScreen = '/notifications_empty_screen';
  static const String notificationsScreen = '/notifications_screen';
  static const String privacypolicyScreen = '/privacypolicy_screen';
  static const String securityScreen = '/security_screen';
  static const String myAddressDeleteOneScreen =
      '/my_address_delete_one_screen';
  static const String myOrdersScreen = '/my_orders_screen';
  static const String myOrdersTwoScreen = '/my_orders_two_screen';
  static const String myOrdersOneScreen = '/my_orders_one_screen';
  static const String ratingScreen = '/rating_screen';
  static const String blogScreen = '/blog_screen';
  static const String blogDetailScreen = '/blog_detail_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static routesFactory(settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return getPage(SplashScreen(), settings);
      case AppRoutes.gridScreen:
        return getPage(GridScreen(), settings);
      case AppRoutes.onboardingOneScreen:
        return getPage(OnboardingOneScreen(), settings);
      case AppRoutes.loginWithActiveScreen:
        return getPage(LoginWithActiveScreen(), settings);
      case AppRoutes.signUpScreen:
        return getPage(SignUpScreen(), settings);
      case AppRoutes.forgotPasswordScreen:
        return getPage(ForgotPasswordScreen(), settings);
      case AppRoutes.verificationScreen:
        return getPage(VerificationScreen(), settings);
      case AppRoutes.resetPasswordScreen:
        return getPage(ResetPasswordScreen(), settings);
      case AppRoutes.resetPasswordSuccessScreen:
        return getPage(ResetPasswordSuccessScreen(), settings);
      case AppRoutes.homeContainerScreen:
        return getPage(HomeContainerScreen(), settings);
      case AppRoutes.searchScreen:
        return getPage(SearchScreen(), settings);
      
      case AppRoutes.topPicksForYouScreen:
        return getPage(TopPicksForYouScreen(), settings);
      case AppRoutes.ourSpecialityScreen:
        return getPage(OurSpecialityScreen(), settings);
      case AppRoutes.cakesScreen:
        return getPage(CakesScreen(), settings);
      case AppRoutes.cupCakeScreen:
        return getPage(CupCakeScreen(), settings);
      case AppRoutes.sweetsScreen:
        return getPage(SweetsScreen(), settings);
      case AppRoutes.filterScreen:
        return getPage(FilterScreen(), settings);
      case AppRoutes.detailPage:
        return getPage(DetailPage(), settings);
      case AppRoutes.detailTabContainerScreen:
        return getPage(DetailTabContainerScreen(), settings);
      case AppRoutes.detailTwoScreen:
        return getPage(DetailTwoScreen(), settings);
      case AppRoutes.detailImageScreen:
        return getPage(DetailImageScreen(), settings);
      case AppRoutes.myCartScreen:
        return getPage(MyCartScreen(), settings);
      case AppRoutes.myCartOnePage:
        return getPage(MyCartOnePage(), settings);
      case AppRoutes.deletOrderScreen:
        return getPage(
          DeletOrderScreen(),
          settings,
        );
      case AppRoutes.myCouponEmptyScreen:
        return getPage(MyCouponEmptyScreen(), settings);
      case AppRoutes.myCouponScreen:
        return getPage(MyCouponScreen(), settings);
      case AppRoutes.myCouponOneScreen:
        return getPage(MyCouponOneScreen(), settings);
      case AppRoutes.paymentScreen:
        return getPage(PaymentScreen(), settings);
      case AppRoutes.addNewAddressScreen:
        return getPage(AddNewAddressScreen(), settings);
      case AppRoutes.myCartPaymentAddressScreen:
        return getPage(MyCartPaymentAddressScreen(), settings);
      case AppRoutes.myCartPaymentAddressEditScreen:
        return getPage(MyCartPaymentAddressEditScreen(), settings);
      case AppRoutes.orderConfirmScreen:
        return getPage(OrderConfirmScreen(), settings);
      case AppRoutes.wishlistEmptyScreen:
        return getPage(WishlistEmptyScreen(), settings);
      case AppRoutes.wishlistPage:
        return getPage(WishlistPage(), settings);
      case AppRoutes.profilePage:
        return getPage(ProfilePage(), settings);
      case AppRoutes.myProfileScreen:
        return getPage(MyProfileScreen(), settings);
      case AppRoutes.editProfileScreen:
        return getPage(EditProfileScreen(), settings);
      case AppRoutes.myAddressEmptyScreen:
        return getPage(MyAddressEmptyScreen(), settings);
      case AppRoutes.addNewAddressOneScreen:
        return getPage(AddNewAddressOneScreen(), settings);
      case AppRoutes.myAddressScreen:
        return getPage(MyAddressScreen(), settings);
      // case AppRoutes.editAddressScreen:
      //   return getPage(EditAddressScreen(), settings);
      case AppRoutes.myCardsEmptyScreen:
        return getPage(MyCardsEmptyScreen(), settings);
      case AppRoutes.addACardDefualtScreen:
        return getPage(AddACardDefualtScreen(), settings);
      case AppRoutes.addACardActiveScreen:
        return getPage(AddACardActiveScreen(), settings);
      case AppRoutes.myCardsDetailsScreen:
        return getPage(MyCardsDetailsScreen(), settings);
      case AppRoutes.settingsScreen:
        return getPage(SettingsScreen(), settings);
      case AppRoutes.notificationsEmptyScreen:
        return getPage(NotificationsEmptyScreen(), settings);
      case AppRoutes.notificationsScreen:
        return getPage(NotificationsScreen(), settings);
      case AppRoutes.privacypolicyScreen:
        return getPage(PrivacyPolicyScreen(), settings);
      case AppRoutes.securityScreen:
        return getPage(SecurityScreen(), settings);
      case AppRoutes.myAddressDeleteOneScreen:
        return getPage(MyAddressDeleteOneScreen(), settings);
      case AppRoutes.myOrdersScreen:
        return getPage(MyOrdersScreen(), settings);
      case AppRoutes.myOrdersTwoScreen:
        return getPage(MyOrdersTwoScreen(), settings);
      // case AppRoutes.myOrdersOneScreen:
      //   return getPage(MyOrdersOneScreen(), settings);
      case AppRoutes.ratingScreen:
        return getPage(RatingScreen(), settings);
      case AppRoutes.blogScreen:
        return getPage(BlogScreen(), settings);
      case AppRoutes.blogDetailScreen:
        return getPage(BlogDetailScreen(), settings);
      case AppRoutes.appNavigationScreen:
        return getPage(AppNavigationScreen(), settings);
      case AppRoutes.initialRoute:
        return getPage(SplashScreen(), settings);
      default:
        return null;
    }
  }

  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splashScreen: (context) => SplashScreen(),
  };

  // static List<GetPage> pages = [
  //   GetPage(
  //     name: splashScreen,
  //     page: () => SplashScreen(),
  //     bindings: [
  //       SplashBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: gridScreen,
  //     page: () => GridScreen(),
  //     bindings: [
  //       GridBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: onboardingOneScreen,
  //     page: () => OnboardingOneScreen(),
  //     bindings: [
  //       OnboardingOneBinding(),
  //     ],
  //   ),
  //
  //   GetPage(
  //     name: onboardingOneOneScreen,
  //     page: () => OnboardingOneOneScreen(),
  //     bindings: [
  //       OnboardingOneOneBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: loginWithErrorScreen,
  //     page: () => LoginWithErrorScreen(),
  //     bindings: [
  //       LoginWithErrorBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: loginWithActiveScreen,
  //     page: () => LoginWithActiveScreen(),
  //     bindings: [
  //       LoginWithActiveBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: signUpScreen,
  //     page: () => SignUpScreen(),
  //     bindings: [
  //       SignUpBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: forgotPasswordScreen,
  //     page: () => ForgotPasswordScreen(),
  //     bindings: [
  //       ForgotPasswordBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: verificationScreen,
  //     page: () => VerificationScreen(),
  //     bindings: [
  //       VerificationBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: resetPasswordScreen,
  //     page: () => ResetPasswordScreen(),
  //     bindings: [
  //       ResetPasswordBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: resetPasswordSuccessScreen,
  //     page: () => ResetPasswordSuccessScreen(),
  //     bindings: [
  //       ResetPasswordSuccessBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: homeContainerScreen,
  //     page: () => HomeContainerScreen(),
  //     bindings: [
  //       HomeContainerBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: searchScreen,
  //     page: () => SearchScreen(),
  //     bindings: [
  //       SearchBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: categoriesScreen,
  //     page: () => CategoriesScreen(),
  //     bindings: [
  //       CategoriesBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: categories2GridScreen,
  //     page: () => Categories2GridScreen(),
  //     bindings: [
  //       Categories2GridBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: topPicksForYouScreen,
  //     page: () => TopPicksForYouScreen(),
  //     bindings: [
  //       TopPicksForYouBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: ourSpecialityScreen,
  //     page: () => OurSpecialityScreen(),
  //     bindings: [
  //       OurSpecialityBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: cakesScreen,
  //     page: () => CakesScreen(),
  //     bindings: [
  //       CakesBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: cupCakeScreen,
  //     page: () => CupCakeScreen(),
  //     bindings: [
  //       CupCakeBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: sweetsScreen,
  //     page: () => SweetsScreen(),
  //     bindings: [
  //       SweetsBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: filterScreen,
  //     page: () => FilterScreen(),
  //     bindings: [
  //       // SweetsBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: detailTabContainerScreen,
  //     page: () => DetailTabContainerScreen(),
  //     bindings: [
  //       DetailTabContainerBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: detailTwoScreen,
  //     page: () => DetailTwoScreen(),
  //     bindings: [
  //       DetailTwoBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: detailImageScreen,
  //     page: () => DetailImageScreen(),
  //     bindings: [
  //       DetailImageBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCartScreen,
  //     page: () => MyCartScreen(),
  //     bindings: [
  //       MyCartBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: deletOrderScreen,
  //     page: () => DeletOrderScreen(),
  //     bindings: [
  //       DeletOrderBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCouponEmptyScreen,
  //     page: () => MyCouponEmptyScreen(),
  //     bindings: [
  //       MyCouponEmptyBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCouponScreen,
  //     page: () => MyCouponScreen(),
  //     bindings: [
  //       MyCouponBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCouponOneScreen,
  //     page: () => MyCouponOneScreen(),
  //     bindings: [
  //       MyCouponOneBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: paymentScreen,
  //     page: () => PaymentScreen(),
  //     bindings: [
  //       PaymentBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: addNewAddressScreen,
  //     page: () => AddNewAddressScreen(),
  //     bindings: [
  //       AddNewAddressBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCartPaymentAddressScreen,
  //     page: () => MyCartPaymentAddressScreen(),
  //     bindings: [
  //       MyCartPaymentAddressBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCartPaymentAddressEditScreen,
  //     page: () => MyCartPaymentAddressEditScreen(),
  //     bindings: [
  //       MyCartPaymentAddressEditBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: orderConfirmScreen,
  //     page: () => OrderConfirmScreen(),
  //     bindings: [
  //       OrderConfirmBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: wishlistEmptyScreen,
  //     page: () => WishlistEmptyScreen(),
  //     bindings: [
  //       WishlistEmptyBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myProfileScreen,
  //     page: () => MyProfileScreen(),
  //     bindings: [
  //       MyProfileBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: editProfileScreen,
  //     page: () => EditProfileScreen(),
  //     bindings: [
  //       EditProfileBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myAddressEmptyScreen,
  //     page: () => MyAddressEmptyScreen(),
  //     bindings: [
  //       MyAddressEmptyBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: addNewAddressOneScreen,
  //     page: () => AddNewAddressOneScreen(),
  //     bindings: [
  //       AddNewAddressOneBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myAddressScreen,
  //     page: () => MyAddressScreen(),
  //     bindings: [
  //       MyAddressBinding(),
  //     ],
  //   ),
  //   // GetPage(
  //   //   name: editAddressScreen,
  //   //   page: () => EditAddressScreen(addressData: data,),
  //   //   bindings: [
  //   //     EditAddressBinding(),
  //   //   ],
  //   // ),
  //   GetPage(
  //     name: myCardsEmptyScreen,
  //     page: () => MyCardsEmptyScreen(),
  //     bindings: [
  //       MyCardsEmptyBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: addACardDefualtScreen,
  //     page: () => AddACardDefualtScreen(),
  //     bindings: [
  //       AddACardDefualtBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: addACardActiveScreen,
  //     page: () => AddACardActiveScreen(),
  //     bindings: [
  //       AddACardActiveBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myCardsDetailsScreen,
  //     page: () => MyCardsDetailsScreen(),
  //     bindings: [
  //       MyCardsDetailsBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: settingsScreen,
  //     page: () => SettingsScreen(),
  //     bindings: [
  //       SettingsBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: notificationsEmptyScreen,
  //     page: () => NotificationsEmptyScreen(),
  //     bindings: [
  //       NotificationsEmptyBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: notificationsScreen,
  //     page: () => NotificationsScreen(),
  //     bindings: [
  //       NotificationsBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: privacypolicyScreen,
  //     page: () => PrivacyPolicyScreen(),
  //     bindings: [
  //       // NotificationsBinding(),
  //     ],
  //   ),
  //
  //   GetPage(
  //     name: securityScreen,
  //     page: () => SecurityScreen(),
  //     bindings: [
  //       // NotificationsBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myAddressDeleteOneScreen,
  //     page: () => MyAddressDeleteOneScreen(),
  //     bindings: [
  //       MyAddressDeleteOneBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myOrdersScreen,
  //     page: () => MyOrdersScreen(),
  //     bindings: [
  //       MyOrdersBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: myOrdersTwoScreen,
  //     page: () => MyOrdersTwoScreen(),
  //     bindings: [
  //       MyOrdersTwoBinding(),
  //     ],
  //   ),
  //   // GetPage(
  //   //   name: myOrdersOneScreen,
  //   //   page: () => MyOrdersOneScreen(),
  //   //   bindings: [
  //   //     MyOrdersOneBinding(),
  //   //   ],
  //   // ),
  //   GetPage(
  //     name: ratingScreen,
  //     page: () => RatingScreen(),
  //     bindings: [
  //       RatingBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: blogScreen,
  //     page: () => BlogScreen(),
  //     bindings: [
  //       BlogBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: blogDetailScreen,
  //     page: () => BlogDetailScreen(),
  //     bindings: [
  //       BlogDetailBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: appNavigationScreen,
  //     page: () => AppNavigationScreen(),
  //     bindings: [
  //       AppNavigationBinding(),
  //     ],
  //   ),
  //   GetPage(
  //     name: initialRoute,
  //     page: () => SplashScreen(),
  //     bindings: [
  //       SplashBinding(),
  //     ],
  //   )
  // ];

  static getPage(var child, var settings) {
    var type = PageTransitionType.rightToLeft;
    return PageTransition(
      child: child,
      type: type,
      settings: settings,
    );
  }
}
