import 'package:flutter/material.dart';

class TextFieldInformationPassword extends StatelessWidget {
  const TextFieldInformationPassword({
    Key? key, required this.name, required this.icon,
  }) : super(key: key);
  final String name;
  final Icon icon;
 

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(9),
      elevation: 10.0,
      shadowColor: Colors.grey,
      child: TextField(
        obscureText: true,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.visibility),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide:
                BorderSide(color: Colors.white, width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide:
                BorderSide(color: Colors.white, width: 3),
          ),
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          prefixIcon: icon,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
                  BorderSide(color: Colors.white, width: 3)),
          labelText: name,
          labelStyle: TextStyle(
            color: Colors.green.shade400,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

