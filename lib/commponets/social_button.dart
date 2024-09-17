import 'package:doctor_app/utils/config.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? Key, required this.social}) : super(key: Key);

  final String social;

  @override
  Widget build(BuildContext context) {
    config().init(context);
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            side: const BorderSide(width: 1, color: Colors.black)),
        onPressed: () {},
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                'assets/$social.png',
                height: 40,
                width: 40,
              ),
              Text(
                social.toUpperCase(),
                style: const TextStyle(color: Colors.black),
              )
            ],
          ),
        ));
  }
}
