import 'package:beritabola_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/controller/auth_controller_controller.dart';
import 'app/controller/messaging_controller.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Get.putAsync(() async => await SharedPreferences.getInstance());
  await FirebaseMessagingHandler().initPushNotification();
  await FirebaseMessagingHandler().initLocalNotification();

  runApp(Main());
}

class Main extends StatelessWidget {
  Main({super.key});
  final _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      // initialRoute: AppPages.INITIAL,
      initialRoute:
          _authController.isLoggedIn.value ? Routes.HOME : Routes.LOGIN,
      getPages: AppPages.routes,
    );
  }
}
