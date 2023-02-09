import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_flutter_app/src/constants/taxt.dart';
import 'package:login_flutter_app/src/features/core/controllers/edit_profile_controller.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/images.dart';
import '../../../../constants/sizes.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EditProfileController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              LineAwesomeIcons.angle_left,
              color: Theme.of(context).iconTheme.color,
            )),
        centerTitle: true,
        elevation: 0,
        title: Text(
          tEditProfile,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage(tWelcomeScreenImage)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100), color: tPrimaryColor),
                      child: Icon(
                        LineAwesomeIcons.camera,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    controller: controller.fullName,
                    decoration: const InputDecoration(
                        label: Text(tFullName), prefixIcon: Icon(Icons.person_outline_rounded)),
                  ),
                  const SizedBox(height: tFormHeight - 20),
                  TextFormField(
                      controller: controller.email,
                      decoration: const InputDecoration(
                          label: Text(tEmail), prefixIcon: Icon(Icons.email_outlined))),
                  const SizedBox(height: tFormHeight - 20),
                  TextFormField(
                    controller: controller.phoneNo,
                    decoration: const InputDecoration(
                        label: Text(tPhoneNo), prefixIcon: Icon(Icons.numbers)),
                  ),
                  const SizedBox(height: tFormHeight - 20),
                  TextFormField(
                    controller: controller.password,
                    decoration: const InputDecoration(
                        label: Text(tPassword), prefixIcon: Icon(Icons.fingerprint)),
                  ),
                  const SizedBox(height: tFormHeight ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(EditProfileScreen());
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: tPrimaryColor,
                            side: BorderSide.none,
                            shape: StadiumBorder()),
                        child: Text(
                          tEditProfile,
                          style: TextStyle(color: tDarkColor),
                        )),
                  ),
                  const SizedBox(height: tFormHeight ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: tJoined,
                          style: TextStyle(fontSize: 12),
                          children: [
                            TextSpan(
                              text: tJoinedAt ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)
                            )
                          ]
                        )
                      ),
                      ElevatedButton(onPressed: () {
                        
                      }, child: Text(tDelete),style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Colors.red,
                        shape: StadiumBorder(),
                        side: BorderSide.none,
                        backgroundColor: Colors.redAccent.withOpacity(0.1)
                      ),)
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
