// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_app/commponets/login_form.dart';
import 'package:doctor_app/commponets/social_button.dart';
import 'package:doctor_app/utils/config.dart';
import 'package:doctor_app/utils/text.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    config().init(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Welcome ',
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          config.spaceSmall,
          Text(
            'Sign in to your account ',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          config.spaceSmall,
          const LoginForm(),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'forgot your password',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: Text(
              'Or continue with social account',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey.shade500),
            ),
          ),
          config.spaceSmall,
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                SocialButton(social: 'google'),
                SocialButton(social: 'facebook')
              ]),
          config.spaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                " Don't have an account? ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade500),
              ),
              const Text(
                'Sign Up',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          )
        ],
      )),
    ));
  }
}
