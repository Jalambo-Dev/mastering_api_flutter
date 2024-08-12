import 'package:flutter/material.dart';
import 'package:mastering_api_flutter/screens/profile_screen.dart';
import 'package:mastering_api_flutter/screens/sign_in_screen.dart';
import 'package:mastering_api_flutter/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Cairo"),
      home: const SignInScreen(),
      routes: {
        '/sign_in': (context) => const SignInScreen(),
        '/sign_up': (context) => const SignUpScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
