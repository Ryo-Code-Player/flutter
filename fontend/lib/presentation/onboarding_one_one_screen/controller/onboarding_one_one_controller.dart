import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/onboarding_one_one_screen/models/onboarding_one_one_model.dart';/// A controller class for the OnboardingOneOneScreen.
///
/// This class manages the state of the OnboardingOneOneScreen, including the
/// current onboardingOneOneModelObj
class OnboardingOneOneController extends GetxController {Rx<OnboardingOneOneModel> onboardingOneOneModelObj = OnboardingOneOneModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
