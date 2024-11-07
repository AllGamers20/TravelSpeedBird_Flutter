import 'package:flutter/material.dart';
import 'package:speedbirdteavel/Colors/colors.dart';
import 'package:speedbirdteavel/Pages/home_page.dart';
import 'package:speedbirdteavel/Pages/login_page.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () {
              if (loginformkey.currentState!.validate()) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false,
                );
              }
            },
            icon: const Icon(Icons.login),
            label: const Text('Login'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              iconColor: Colors.white,
              foregroundColor: Colors.white,
              backgroundColor: kDodgerBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
