import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/authentication_repository.dart';

class EditProfileController extends GetxController {
  static EditProfileController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();


}
