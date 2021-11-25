// ignore_for_file: prefer_const_constructors

import 'package:appdevtask/widget/google_signup_button_widget.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => buildSignUp();

  Widget buildSignUp() => Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child: const Text(
                'Welcome To Psyber Incorporation',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Spacer(),
          GoogleSignupButtonWidget(),
          SizedBox(height: 12),
          Text(
            'Login to continue',
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),
        ],
      );
}
