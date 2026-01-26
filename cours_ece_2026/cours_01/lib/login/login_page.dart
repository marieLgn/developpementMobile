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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            const EmailField(),

            const SizedBox(height: 24),

            ContinueButton(
              onPressed: () {
                print('Continuer');
              },
            ),

            const SizedBox(height: 40),

            const OrSeparator(),

            const SizedBox(height: 40),

            ContinueWithButton(
              provider: 'Apple',
              iconPath: 'assets/apple_logo.svg',
              onPressed: () {
                print('Apple');
              },
            ),

            const SizedBox(height: 16),

            ContinueWithButton(
              provider: 'Google',
              iconPath: 'assets/google_logo.svg',
              onPressed: () {
                print('Google');
              },
            ),

            const SizedBox(height: 16),

            ContinueWithButton(
              provider: 'Facebook',
              iconPath: 'assets/facebook_logo.svg',
              onPressed: () {
                print('Facebook');
              },
            ),
          ],
        ),
      ),
    );
  }
}
