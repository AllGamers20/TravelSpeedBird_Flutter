import 'package:flutter/material.dart';
import 'package:speedbirdteavel/Controllers/login_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome${loginEmailController.text}'),
      ),
    );
  }
}
