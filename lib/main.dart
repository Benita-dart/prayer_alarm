import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Views/HomeScreen.dart';
import 'Views/LoginView.dart';
import 'firebase_options.dart';

import 'Views/verifyemail.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      color: Colors.blueAccent,
      home: Scaffold(
           body:HomePage(),

      ),

    )
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              if (user.emailVerified) {
                return const HomeScreen();
              } else {
                return const VerifyEmailView();
              }
            } else {
              return LoginView();
            }

          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}



