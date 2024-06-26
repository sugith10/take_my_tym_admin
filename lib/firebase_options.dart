// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      return web;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDFTfNVkA0HfMRHRbIxYDkqp-n9_kGeMiQ',
    appId: '1:895129544275:web:b2a72da8860cb13cefc8a6',
    messagingSenderId: '895129544275',
    projectId: 'take-my-tym',
    authDomain: 'take-my-tym.firebaseapp.com',
    storageBucket: 'take-my-tym.appspot.com',
    measurementId: 'G-06EVKHTPR6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMVzzgxwyRpeE_8B8DMZQIdB-QjQ6xlPc',
    appId: '1:895129544275:android:b047fb13d5e951b9efc8a6',
    messagingSenderId: '895129544275',
    projectId: 'take-my-tym',
    storageBucket: 'take-my-tym.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLKtKdfIFgqqBp2BNjwZf_chZ1YpATmcc',
    appId: '1:895129544275:ios:9ef18bf73b0acfedefc8a6',
    messagingSenderId: '895129544275',
    projectId: 'take-my-tym',
    storageBucket: 'take-my-tym.appspot.com',
    androidClientId: '895129544275-0hgr6uaedfkmhupuh8kuic6qaepubgme.apps.googleusercontent.com',
    iosClientId: '895129544275-erup22tup5vr2vaml6vgolgu0f298532.apps.googleusercontent.com',
    iosBundleId: 'com.dayproduction.takeMyTymAdmin',
  );

}