import 'package:cours_01/login/continue_button.dart';
import 'package:cours_01/login/continue_with_button.dart';
import 'package:cours_01/login/email_field.dart';
import 'package:cours_01/login/or_separator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';

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
          children: <Widget>[
            EmailField(
              onChanged: (String value) {
                setState(() {
                  _email = value;
                });
              },
            ),

            const SizedBox(height: 24),

            ContinueButton(onPressed: _email.isNotEmpty ? () {} : null),

            const SizedBox(height: 40),

            const OrSeparator(),

            const SizedBox(height: 40),

            ContinueWithButton(
              provider: 'Apple',
              iconPath: 'assets/apple_logo.svg',
              onPressed: () {},
            ),

            const SizedBox(height: 16),

            ContinueWithButton(
              provider: 'Google',
              iconPath: 'assets/google_logo.svg',
              onPressed: () {},
            ),

            const SizedBox(height: 16),

            ContinueWithButton(
              provider: 'Facebook',
              iconPath: 'assets/facebook_logo.svg',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
