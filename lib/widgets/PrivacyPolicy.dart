import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({
    Key? key, required this.termsOfUseFunc, required this.privacyPolicyFunc,
  }) : super(key: key);
  final Function termsOfUseFunc;
  final Function privacyPolicyFunc;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'By crating an accunt,you agree to Wasty',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'Terms of use  ',
                  style: TextStyle(
                      color: Colors.green.shade400,
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {termsOfUseFunc();}),
              TextSpan(
                text: 'and  ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: 'Privacy policy',
                  style: TextStyle(
                      color: Colors.green.shade400,
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {privacyPolicyFunc();}),
            ],
          ),
        ),
      ],
    );
  }
}