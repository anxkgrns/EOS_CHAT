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
    apiKey: 'AIzaSyD8Z43N3IRtRgpkN50po61ZTH2XhTwdOTg',
    appId: '1:621423870446:web:da4f7eaab494b008670eff',
    messagingSenderId: '621423870446',
    projectId: 'eos-chat-5acab',
    authDomain: 'eos-chat-5acab.firebaseapp.com',
    storageBucket: 'eos-chat-5acab.appspot.com',
    measurementId: 'G-P6G7FGCDWP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_xfDPBoac5vxjQ1Ty5SRFL1TBgU95bwM',
    appId: '1:621423870446:android:bac08f3e38691043670eff',
    messagingSenderId: '621423870446',
    projectId: 'eos-chat-5acab',
    storageBucket: 'eos-chat-5acab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgMq6sU7sPPr0Z1QXw0vTAic9FsjHUSGc',
    appId: '1:621423870446:ios:ccf05b16b7471ec3670eff',
    messagingSenderId: '621423870446',
    projectId: 'eos-chat-5acab',
    storageBucket: 'eos-chat-5acab.appspot.com',
    iosClientId: '621423870446-96835tpi56o3cuks4r04utp42ot2evtg.apps.googleusercontent.com',
    iosBundleId: 'com.eos.eosChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgMq6sU7sPPr0Z1QXw0vTAic9FsjHUSGc',
    appId: '1:621423870446:ios:ccf05b16b7471ec3670eff',
    messagingSenderId: '621423870446',
    projectId: 'eos-chat-5acab',
    storageBucket: 'eos-chat-5acab.appspot.com',
    iosClientId: '621423870446-96835tpi56o3cuks4r04utp42ot2evtg.apps.googleusercontent.com',
    iosBundleId: 'com.eos.eosChat',
  );
}