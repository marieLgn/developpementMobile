import 'package:flutter/material.dart';
import 'email_field.dart';
import 'continue_button.dart';
import 'or_separator.dart';
import 'continue_with_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login or sign up',
          style: TextStyle(
            color: Color.fromARGB(240, 30, 71, 87),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const EmailField(),

          ContinueButton(
            onPressed: () {
              print('Continuer');
            },
          ),

          const OrSeparator(),

          ContinueWithButton(
            provider: 'Apple',
            iconPath: 'assets/apple_logo.svg',
            onPressed: () {
              print('Continuer avec Apple');
            },
          ),
        ],
      ),
    );
  }
}
