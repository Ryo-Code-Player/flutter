import 'dart:convert';
import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';
import 'package:flutterbekeryapp/presentation/settings_screen/binding/settings_binding.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../core/constants/constants.dart';
import 'package:flutterbekeryapp/model/site_setting.dart';

class ProfileRepository {
  final String apiUrl = api_sitesetting;

  Future<void> fetchAndSaveSiteSetting() async {
    final siteName = '';
    final logoUrl = '';
    try {
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type' : 'appication/json',
        },
      );
      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200){
        final data = jsonDecode(response.body);

        final setting = data['setting'];
        g_sitesetting = SiteSetting.fromJson(jsonDecode(data['setting']));

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('site_name', g_sitesetting.short_name);
        await prefs.setString('logo_url', g_sitesetting.logo);
      } else {
        print('That bai lay thong tin: ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<Map<String, String?>> loadSiteSetting() async {
    final prefs = await SharedPreferences.getInstance();
    final siteName = prefs.getString('logo_url');
    var logoUrl = prefs.getString('logo_url');
    if (app_type == "app") {
      logoUrl = logoUrl?.replaceAll('127.0.0.1', '10.0.2.2');
    }
    return {
      'site_name' : siteName,
      'logo_url' : logoUrl,
    };
  }
}
