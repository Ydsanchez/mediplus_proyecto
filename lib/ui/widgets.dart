// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextsRegister extends StatelessWidget {

  final String textos;
  final Icon iconos;
  final bool obscureText;

  const TextsRegister({
    Key? key,
    this.obscureText = false,
    required this.iconos,
    required this.textos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(left: 20, right: 20, top: 20),
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