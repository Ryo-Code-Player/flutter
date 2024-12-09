import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/our_speciality_screen/models/our_speciality_model.dart';

import '../models/our_speciality_item_model.dart';

/// A controller class for the OurSpecialityScreen.
///
/// This class manages the state of the OurSpecialityScreen, including the
/// current ourSpecialityModelObj
class OurSpecialityController extends GetxController {
  // Rx<OurSpecialityModel> ourSpecialityModelObj = OurSpecialityModel().obs;
 List<OurSpecialityItemModel> ourSpecialityData =  OurSpecialityModel.getOurSpeciality();
}
