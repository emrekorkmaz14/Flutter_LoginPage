import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstButton extends StatelessWidget {
  const FirstButton({
    Key? key, required this.text,required this.onPressed
  }) : super(key: key);
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.green.shade400,
          borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: (){onPressed();},
      ),
    );
  }
}