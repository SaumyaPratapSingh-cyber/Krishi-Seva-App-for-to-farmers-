import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAFrY77voHvtLTmUzWCJ2uziqOtfl3p4Ns",
            authDomain: "ksdemmo-39m9f8.firebaseapp.com",
            projectId: "ksdemmo-39m9f8",
            storageBucket: "ksdemmo-39m9f8.firebasestorage.app",
            messagingSenderId: "967694273487",
            appId: "1:967694273487:web:a72b607d480ba775f6e0ba"));
  } else {
    await Firebase.initializeApp();
  }
}
