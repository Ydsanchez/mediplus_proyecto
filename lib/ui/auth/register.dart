// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:mediplus_proyecto/ui/widgets.dart';

import '../../domain/modelo/persona.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final List<Persona> _addPersona = [];

  TextEditingController controlIdentificacion = TextEditingController();
  TextEditingController controlNombre = TextEditingController();
  TextEditingController controlFecNac = TextEditingController();
  TextEditingController controlCelular = TextEditingController();
  TextEditingController controlDireccion = TextEditingController();
  TextEditingController controlCorreo = TextEditingController();
  TextEditingController controlContrasena = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget(){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                gradient: LinearGradient(
                  colors: [(Color.fromARGB(255, 2, 147, 29)), (Color.fromARGB(255, 1, 55, 11))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/vDkXZh8BPbgvhfghlrDPMSN9CpXIszJuyMVkPm01UG2pj81XZEkwpXVqycdTgacxhg"),
                      ),
                    ),
                    
                    Container(
                      margin: const EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.bottomRight,
                      child: const Text("Registrar",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    )
                  ],
                ),    
              ),
            ),
            
            TextsRegister(
              top: 70,
              gestionTextos: controlIdentificacion,
              textos: 'Identificacion', 
              iconos: const Icon(
                Icons.perm_identity,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            TextsRegister(
              top: 20,
              gestionTextos: controlNombre,
              textos: 'Nombre Completo', 
              iconos: const Icon(
                Icons.person_add,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            //Fecha Nacimiento

            TextsRegister(
              top: 20,
              gestionTextos: controlCelular,
              textos: 'Celular', 
              iconos: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            TextsRegister(
              top: 20,
              gestionTextos: controlDireccion,
              textos: 'Direccion', 
              iconos: const Icon(
                Icons.map,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            TextsRegister(
              top: 20,
              gestionTextos: controlCorreo,
              textos: 'Correo', 
              iconos: const Icon(
                Icons.email,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            TextsRegister(
              top: 20,
              gestionTextos: controlContrasena,
              obscureText: true,
              textos: 'Contraseña', 
              iconos: const Icon(
                Icons.vpn_key,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            GestureDetector(
              onTap: () => {
                
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 60),
                padding: const EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [(Color.fromARGB(255, 2, 147, 29)), (Color.fromARGB(255, 1, 55, 11))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)
                  )],
                ),
                child: const Text("Registrar",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}