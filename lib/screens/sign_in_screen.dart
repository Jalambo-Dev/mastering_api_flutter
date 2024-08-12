import 'package:flutter/material.dart';
import 'package:mastering_api_flutter/widgets/text_form_field_widget.dart';
import 'package:mastering_api_flutter/widgets/text_header_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In".toUpperCase()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // welcome back
            const TextHeaderWidget(text: "Welcome Back.."),

            const SizedBox(height: 20),

            // eamil address textfield
            const TextFormFieldWidget(
              hintText: "Email Address",
              obscureText: false,
              prefixIcon: Icons.email,
            ),

            const SizedBox(height: 10),

            // password textfield
            const TextFormFieldWidget(
              hintText: "Password",
              obscureText: true,
              prefixIcon: Icons.lock,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Don't have account? text
                const Text("Don't have account?"),

                // sign up text button
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/sign_up'),
                  child: const Text("sign up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
