import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rows_columns_demo/login_form.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: 'Simple Login Page Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraint) {
            if (constraint.maxWidth >= 600) {
              return  Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/img/login-banner.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Expanded(child: LoginForm()),
                  ],
                )
              ;
            } else if (constraint.maxWidth < 900) {
              return const LoginForm();
            }

            return const Scaffold();
          },
        ),
      ),
    );
  }
}
