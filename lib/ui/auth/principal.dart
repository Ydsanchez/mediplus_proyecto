import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediplus_proyecto/ui/auth/login.dart';

class Bienvenidos extends StatefulWidget {
  const Bienvenidos({super.key});

  @override
  State<Bienvenidos> createState() => _BienvenidosState();
}

class _BienvenidosState extends State<Bienvenidos> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
      context, MaterialPageRoute(
        builder: (context) => const Login()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return initwidget();
  }

  Widget initwidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 2, 147, 29),
              gradient: LinearGradient(
                colors: [(Color.fromARGB(255, 2, 147, 29)), (Color.fromARGB(255, 1, 55, 11))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          ),
          const Center(
            child: CircleAvatar(
              radius: 90,
              backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/vDkXZh8BPbgvhfghlrDPMSN9CpXIszJuyMVkPm01UG2pj81XZEkwpXVqycdTgacxhg"),
            )
          )
        ]
      ),
    );
  }
}