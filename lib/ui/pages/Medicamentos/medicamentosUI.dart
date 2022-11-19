// ignore_for_file: file_names, unnecessary_import, unused_import, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediplus_proyecto/domain/modelo/persona.dart';
import 'package:mediplus_proyecto/ui/pages/Medicamentos/constantes.dart';

class MedicamentosUI extends StatefulWidget {

  @override
  State<MedicamentosUI> createState() => _MedicamentosUIState();
}

class _MedicamentosUIState extends State<MedicamentosUI> {

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
}

Widget initWidget(){
  return Scaffold(
    body: SingleChildScrollView(
      child: initScreen(),
    ),
  );
}

Widget initScreen() {
  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildGreetings()
      ],
    ),
  );
}

Widget buildGreetings() {
  return Container(
    child: Stack(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                  children: const [
                    TextSpan(
                      text: "Bienvenido, "
                    ),
                    TextSpan(
                      text: "poner nombre del clientre que ingrese",
                      style: TextStyle(
                        color: Constants.Prymary_Color
                      )
                    )
                  ]
                )
              )
            ],
          ),
        )
      ],
    ),
  );
}