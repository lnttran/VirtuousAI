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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyBeS_llasoKNBcMKilUO29q9vdgPN-zZI4',
    appId: '1:530931476367:web:21ff43219bfc1830998dfa',
    messagingSenderId: '530931476367',
    projectId: 'virtuousai-acd03',
    authDomain: 'virtuousai-acd03.firebaseapp.com',
    storageBucket: 'virtuousai-acd03.appspot.com',
    measurementId: 'G-V247HP9K2M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBq7iPGVb3zXmPSLiKTcmpzlq_JRu9m-4I',
    appId: '1:530931476367:android:dc86ad6b1b6e2b12998dfa',
    messagingSenderId: '530931476367',
    projectId: 'virtuousai-acd03',
    storageBucket: 'virtuousai-acd03.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAA0N_5TWiMV5mvk8irtxfw4nUqzznmfRM',
    appId: '1:530931476367:ios:081f5a6a5cc302c9998dfa',
    messagingSenderId: '530931476367',
    projectId: 'virtuousai-acd03',
    storageBucket: 'virtuousai-acd03.appspot.com',
    iosClientId: '530931476367-6rh954uaalkcl4s15ub9nkjvanfapga3.apps.googleusercontent.com',
    iosBundleId: 'com.example.virtuousAi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAA0N_5TWiMV5mvk8irtxfw4nUqzznmfRM',
    appId: '1:530931476367:ios:582dfc24842d56ca998dfa',
    messagingSenderId: '530931476367',
    projectId: 'virtuousai-acd03',
    storageBucket: 'virtuousai-acd03.appspot.com',
    iosClientId: '530931476367-u4bgrmdlfcc7fgj4fjurjdnfo5vs1pvk.apps.googleusercontent.com',
    iosBundleId: 'com.example.virtuousAi.RunnerTests',
  );
}