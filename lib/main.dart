import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ropstam_app/Constants/Controllers.dart';
import 'package:ropstam_app/Controllers/SessionController.dart';
import 'package:ropstam_app/Views/Home/HomeScreen.dart';
import 'package:ropstam_app/Views/Login/LoginScreen.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  Get.put(SessionController());
  runApp(const LoginSession());
}

class LoginSession extends StatelessWidget {
  const LoginSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var logindata = sessionController.box.read('userdata');
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: logindata == null ? LoginScreen() : HomeScreen(),
    );
  }
}
