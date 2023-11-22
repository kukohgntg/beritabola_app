import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/auth_controller_controller.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final user = FirebaseAuth.instance.currentUser!;
  final AuthController _authController = Get.put(AuthController());
  ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[900],
      //   title: const Text('HomeView'),
      //   centerTitle: true,
      // actions: [
      //   IconButton(
      //     icon: const Icon(Icons.exit_to_app),
      //     onPressed: () {
      //       _authController.logout();
      //     },
      //   ),
      // ],
      // ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              _authController.logout();
            },
          ),
        ],
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 2),
      body: Center(
          child: Text(
        "LOGGED IN AS: ${user.email!}",
        style: const TextStyle(fontSize: 20),
      )),
    );
  }
}
