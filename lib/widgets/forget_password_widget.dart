import 'package:flutter/material.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => (),
      child: const Text(
        "Forget Password?",
        textAlign: TextAlign.end,
      ),
    );
  }
}
