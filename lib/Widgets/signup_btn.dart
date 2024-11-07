import 'package:flutter/material.dart';
import 'package:speedbirdteavel/Colors/colors.dart';
import 'package:speedbirdteavel/Pages/home_page.dart';
import 'package:speedbirdteavel/Pages/signup_page.dart';

class SignupBtn extends StatelessWidget {
  const SignupBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                iconColor: Colors.white,
                backgroundColor: kDodgerBlue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            icon: const Icon(Icons.login),
            onPressed: () {
              if (signupformkey.currentState!.validate()) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false,
                );
              }
            },
            label: const Text('Signup'),
          ),
        ),
      ],
    );
  }
}
