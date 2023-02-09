import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_flutter_app/src/features/core/controllers/dashboard_controller.dart';
import 'package:login_flutter_app/src/features/core/screens/profile/profile_screen.dart';

import '../../../../constants/taxt.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return  Scaffold(
     body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Welcome",style: Theme.of(context).textTheme.headline2,),
            ElevatedButton(onPressed: () {
            Get.to(ProfileScreen());
            }, child: Text("Profile")),
            ElevatedButton(onPressed: () {
              controller.logout();
            }, child: Text("Logout")),
          ],
        ),
     ),
    );
  }
}
