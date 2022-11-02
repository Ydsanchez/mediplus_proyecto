// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class TextsRegister extends StatelessWidget {

  final TextEditingController gestionTextos;
  final String textos;
  final Icon iconos;
  final bool obscureText;
  final double top;

  const TextsRegister({
    Key? key,
    required this.top,
    required this.gestionTextos,
    this.obscureText = false,
    required this.iconos,
    required this.textos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: top),
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
        boxShadow: const [BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 50,
          color: Color(0xffEEEEEE)
        )]
      ),
      alignment: Alignment.center,
      child: TextField(
        controller: gestionTextos,
        obscureText: obscureText,
        cursorColor: const Color.fromARGB(255, 2, 147, 29),
        decoration: InputDecoration(
          icon: iconos,
          labelText: textos,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none
        ),
      ),
    );
  }
}