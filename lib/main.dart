import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' show Get, GetMaterialApp, Inst;
import 'package:task1/controller/bottom_nav_control.dart';
import 'package:task1/routes/app_pages.dart';
import 'package:task1/routes/app_routes.dart';

import 'package:task1/view/login_screen.dart';

void main() {
  Get.put(BottomNavController());
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      initialRoute: AppRoutes.login,
      getPages: AppPages.routes,
    );
  }
}
