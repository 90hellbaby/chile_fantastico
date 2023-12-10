import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD7j78qxQwSjIs9EruOgYzg9T5CyeBUDx8",
            authDomain: "chilefantastico-ebb11.firebaseapp.com",
            projectId: "chilefantastico-ebb11",
            storageBucket: "chilefantastico-ebb11.appspot.com",
            messagingSenderId: "412937447236",
            appId: "1:412937447236:web:eeaeeb93603297b3aa9911"));
  } else {
    await Firebase.initializeApp();
  }
}
