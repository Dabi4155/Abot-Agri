import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB3egMpqitVcUtFNjp-3Qafj7qPAYfhto0",
            authDomain: "abotagri-e274b.firebaseapp.com",
            projectId: "abotagri-e274b",
            storageBucket: "abotagri-e274b.firebasestorage.app",
            messagingSenderId: "210859207737",
            appId: "1:210859207737:web:a575d3c7dca826860d31e8",
            measurementId: "G-6DGEB4JZBT"));
  } else {
    await Firebase.initializeApp();
  }
}
