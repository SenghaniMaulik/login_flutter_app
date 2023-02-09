import 'package:get/get.dart';

import '../../../repository/authentication_repository/authentication_repository.dart';

class DashboardController extends GetxController{
  static DashboardController get instance => Get.find();

  void logout(){
    AuthenticationRepository.instance.logout();
  }
}