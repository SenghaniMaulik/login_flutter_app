// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASkXq7Foi-r2WQhzjkH_kb9mKfATjF78c',
    appId: '1:488377700639:android:545e4af5e9f7b6c2d7202a',
    messagingSenderId: '488377700639',
    projectId: 'flutter-login-app-c7b70',
    storageBucket: 'flutter-login-app-c7b70.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCePfbFND4ey-nEN8TxssHrUlbafJpD7ps',
    appId: '1:488377700639:ios:0cbc7ca14cf04566d7202a',
    messagingSenderId: '488377700639',
    projectId: 'flutter-login-app-c7b70',
    storageBucket: 'flutter-login-app-c7b70.appspot.com',
    androidClientId: '488377700639-bg42jm1efrtq32fcghoe345ekma772rg.apps.googleusercontent.com',
    iosClientId: '488377700639-3p0eok3m7adk0933u8q11ioktpvppdpr.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginflutter.loginFlutterApp',
  );
}
