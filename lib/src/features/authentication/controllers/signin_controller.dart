import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/authentication_repository.dart';

class SignInController extends GetxController{
  static SignInController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();


  void signInUser(String email,String password){
   String? error= AuthenticationRepository.instance.signInUserWithEmailAndPassword(email, password) as String?;
    if(error!=null)
    {
      Get.showSnackbar(GetSnackBar(message: error.toString(),));
    }
  }
}