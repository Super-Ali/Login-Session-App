import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ropstam_app/Constants/Controllers.dart';
import 'package:ropstam_app/Views/Home/Posts/Posts.dart';
import 'package:ropstam_app/Views/Login/LoginScreen.dart';
import 'package:ropstam_app/Widgets/StylishAppBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userdata = sessionController.box.read('userdata');
    String image = "http://buddy.ropstambpo.com/storage/stores/1647860586.jpg";
    void logOut() {
      Get.offAll(() => LoginScreen());
      sessionController.box.remove('userdata');
    }

    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 1.5),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              StylishAppBar(
                title: userdata['data']['user']['name'],
                subtitle: userdata['data']['user']['email'],
                number: userdata['data']['user']['mobile'],
                image: image,
                logout: () => logOut,
              ),
            ],
          ),
        ),
      ),
      body: Posts(),
    );
  }
}
