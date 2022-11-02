import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediplus_proyecto/domain/modelo/persona.dart';
import 'package:mediplus_proyecto/ui/pages/inicio.dart';
import 'package:mediplus_proyecto/ui/widgets.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final List<Persona> _persona = listPersona;

  TextEditingController controlCorreo = TextEditingController();
  TextEditingController controlContrasena = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color.fromARGB(255, 2, 147, 29),
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
                      child: const Text("Iniciar Seccion",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            
            TextsRegister(
              gestionTextos: controlCorreo,
              textos: 'Ingresar Correo', 
              iconos: const Icon(
                Icons.email,
                color: Color.fromARGB(255, 2, 147, 29)
              ),
            ),

           TextsRegister(
            gestionTextos: controlContrasena,
              obscureText: true,
              textos: 'Ingresar Contraseña', 
              iconos: const Icon(
                Icons.vpn_key,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            Container(
              margin: const EdgeInsets.only(top: 20, right: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: const Text("¿Olvido la Contraseña?"),
                onTap: () => {},
              ),
            ),

            GestureDetector(
              onTap: () => {
                iniciarSeccion(context)
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
                child: const Text("Iniciar Seccion",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("¿No tienes Cuenta?"),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(context, 
                        MaterialPageRoute(builder: 
                        (context) => const Register()
                        )
                      )
                    },
                    child: const Text("Registrarse",
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 147, 29)
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  iniciarSeccion(context) {
    var valid = _persona.firstWhere(
      (p) => p.correo == controlCorreo.text && p.contrasena == controlContrasena.text, orElse: () => Persona());
    
    if(valid.correo != null){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Inicio()));
      showDialog(
        context: context, 
        builder: (_) => const AlertDialog(
          title: Text('MediPlus'),
          content: Text('Bienvenid@'),
        )
      );
    }else{
      showDialog(
        context: context, 
        builder: (_) => const AlertDialog(
          title: Text('MediPlus'),
          content: Text('Correo o Contraseña Incorrectos'),
        )
      );
    }
  }
}