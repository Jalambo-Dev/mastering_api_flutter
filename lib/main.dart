import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mastering_api_flutter/screens/profile_screen.dart';
import 'package:mastering_api_flutter/screens/sign_in_screen.dart';
import 'package:mastering_api_flutter/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());

  // Set the system UI mode to edge-to-edge,
  // making the navigation bar and status bar transparent
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  // Customize the system UI overlay style,
  // specifically making the navigation bar color transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor:
          Colors.transparent, // Set the navigation bar color to transparent
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Cairo"),
      home: const ProfileScreen(),
      routes: {
        '/sign_in': (context) => const SignInScreen(),
        '/sign_up': (context) => const SignUpScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
