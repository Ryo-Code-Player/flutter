import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Đảm bảo đã import flutter_riverpod
import 'views/login.dart';
import 'views/register.dart'; 
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'core/app_export.dart';  
import 'presentation/home_container_screen/home_container_screen.dart'; 
import '../repository/comment_repository.dart';
import '../stateNotifier/CommentNotifier.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(ProviderScope(child: MyApp()));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: appTheme.white, surfaceTintColor: appTheme.white),
        dialogTheme: DialogTheme(backgroundColor: appTheme.white, surfaceTintColor: appTheme.white),
        useMaterial3: true,
        visualDensity: VisualDensity.standard,
      ),
      translations: AppLocalization(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),

      initialRoute: '/login', // Đặt route ban đầu là trang login

      // Định nghĩa các route
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/register', page: () => RegisterPage()),
        GetPage(name: '/home', page: () => HomeContainerScreen()),
      ],
    );
  }
}
