import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mediplus_proyecto/ui/widgets.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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

                    const SizedBox(width: 30.0),

                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/vDkXZh8BPbgvhfghlrDPMSN9CpXIszJuyMVkPm01UG2pj81XZEkwpXVqycdTgacxhg"),                    
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

            const SizedBox(width: 30.0),
            
            const TextsRegister(
              textos: 'Ingresar Correo', 
              iconos: Icon(
                Icons.email,
                color: Color.fromARGB(255, 2, 147, 29)
              ),
            ),

           const TextsRegister(
              obscureText: true,
              textos: 'Ingresar Contraseña', 
              iconos: Icon(
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
}