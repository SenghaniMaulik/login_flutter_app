import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_flutter_app/src/repository/exceptions/login_with_email_and_pssword_failure.dart';
import 'package:login_flutter_app/src/repository/exceptions/signup_email_password_failure.dart';

import '../../features/authentication/screens/welcome/welcome_screen.dart';
import '../../features/core/screens/dashboard/dashboard_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(WelcomeScreen());
    } else {
      Get.offAll(DashboardScreen());
    }
  }

  createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print("FIREBASE AUTH EXCEPTION - ${ex.message}");
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailAndPasswordFailure();
      print("EXCEPTION - ${ex.message}");
      throw ex;
    }
    return null;
  }

  signInUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _setInitialScreen(firebaseUser.value);
    } on FirebaseAuthException catch (e) {
      final ex = SignInWithEmailAndPasswordFailure.getMessageFromErrorCode(e.code);
      print("FIREBASE AUTH EXCEPTION - ${ex}");
      throw ex;
    } catch (_) {
      final ex = SignInWithEmailAndPasswordFailure.getMessageFromErrorCode("");
      print("EXCEPTION - ${ex}");
      throw ex;
    }
    return null;
  }

  Future<void> logout() async => await _auth.signOut();

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (phoneAuthCredential) async {
        await _auth.signInWithCredential(phoneAuthCredential);
      },
      verificationFailed: (error) {
        if (error.code == 'invalid-phone-number') {
          Get.snackbar("Error", "The provided number is not valid");
        } else {
          Get.snackbar("Error", "Something went wrong .Try again");
        }
      },
      codeSent: (verificationId, forceResendingToken) {
        this.verificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        this.verificationId.value = verificationId;
      },
    );
  }

  Future<bool> verifyOTP(String otp) async {
    var credentials = await _auth.signInWithCredential(
        PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));

    return credentials.user != null ? true : false;
  }
}
