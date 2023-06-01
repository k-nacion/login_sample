import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              const _WelcomeTitle(),
              const SizedBox(height: 24),
              const _CreateAccount(),
              const SizedBox(height: 32),
              const _EmailAndPasswordForms(),
              const SizedBox(height: 32),
              const _FormButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class _WelcomeTitle extends StatelessWidget {
  const _WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Welcome to Panorama,',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          'Sign In to Continue.',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}

class _CreateAccount extends StatelessWidget {
  const _CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RichText(
          text: TextSpan(
            text: 'Dont\' have an account? ',
            style: const TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: 'Create an account',
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => log('Create account was tapped', name: 'Create an Account text'),
              )
            ],
          ),
        ),
        Text(
          'It takes less than a minute',
          style: TextStyle(
            fontFamily: GoogleFonts.robotoFlex().fontFamily,
          ),
        )
      ],
    );
  }
}

class _EmailAndPasswordForms extends StatelessWidget {
  const _EmailAndPasswordForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Email',
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Colors.black,
              ),
        ),
        const SizedBox(height: 4),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.zero),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Password',
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Colors.black,
              ),
        ),
        const SizedBox(height: 4),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.zero),
          ),
        ),
        const SizedBox(height: 12),
        Center(
          child: RichText(
            text: TextSpan(
                text: 'Forgot Password?',
                style: const TextStyle(decoration: TextDecoration.underline, color: Colors.black),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => log('Forgot Password is tapped', name: 'Forgot password? ')),
          ),
        )
      ],
    );
  }
}

class _FormButtons extends StatelessWidget {
  const _FormButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              padding: const EdgeInsets.symmetric(vertical: 24),
            ),
            child: Text(
              'Sign In',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              padding: const EdgeInsets.symmetric(vertical: 24),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.black,
                ),
                const SizedBox(width: 8),
                Text(
                  'Sign In with Google ',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
