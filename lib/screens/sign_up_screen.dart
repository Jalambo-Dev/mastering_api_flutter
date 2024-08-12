import 'package:flutter/material.dart';
import 'package:mastering_api_flutter/widgets/elevated_button_widget.dart';
import 'package:mastering_api_flutter/widgets/pick_image_widget.dart';
import 'package:mastering_api_flutter/widgets/text_form_field_widget.dart';
import 'package:mastering_api_flutter/widgets/text_header_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up".toUpperCase()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // create new account
            const TextHeaderWidget(text: "Create New Account.."),

            const SizedBox(height: 20),

            // image
            const PickImageWidget(),

            const SizedBox(height: 10),

            // Name textfield
            const TextFormFieldWidget(
              hintText: "Name",
              obscureText: false,
              prefixIcon: Icons.person,
              textInputType: TextInputType.name,
            ),

            const SizedBox(height: 10),

            // eamil address textfield
            const TextFormFieldWidget(
              hintText: "Email Address",
              obscureText: false,
              prefixIcon: Icons.email,
              textInputType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 10),

            // phone number textfield
            const TextFormFieldWidget(
              hintText: "Phone Number",
              obscureText: false,
              prefixIcon: Icons.phone,
              textInputType: TextInputType.phone,
            ),

            const SizedBox(height: 10),

            // password textfield
            const TextFormFieldWidget(
              hintText: "Password",
              obscureText: true,
              prefixIcon: Icons.lock,
              textInputType: TextInputType.visiblePassword,
            ),

            const SizedBox(height: 10),

            // confirm password textfield
            const TextFormFieldWidget(
              hintText: "Confirm Passowrd",
              obscureText: true,
              prefixIcon: Icons.lock,
              textInputType: TextInputType.visiblePassword,
            ),

            const SizedBox(height: 10),

            // sign up button
            const ElevatedButtonWidget(text: "Sign up"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // You have already account?
                const Text("You have already account?"),

                // sign in text button
                TextButton(
                  onPressed: () => Navigator.pop(context, '/sign_in'),
                  child: const Text("Sign in"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
