import 'package:get/get.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/dashboard_screen.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/authentication_repository.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.put(OTPController());


  void verifyOTP(String otp) async {
    bool isVerified =await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const DashboardScreen()): Get.back();
  }
}