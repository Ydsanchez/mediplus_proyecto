import 'package:flutter/material.dart';
import 'package:mediplus_proyecto/ui/widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

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
            
            const TextsRegister(
              textos: 'Identificacion', 
              iconos: Icon(
                Icons.perm_identity,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            const TextsRegister(
              textos: 'Nombre Completo', 
              iconos: Icon(
                Icons.person_add,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            //Fecha Nacimiento

            const TextsRegister(
              textos: 'Celular', 
              iconos: Icon(
                Icons.call,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            const TextsRegister(
              textos: 'Direccion', 
              iconos: Icon(
                Icons.map,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            const TextsRegister(
              textos: 'Correo', 
              iconos: Icon(
                Icons.email,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),

            const TextsRegister(
              obscureText: true,
              textos: 'Contraseña', 
              iconos: Icon(
                Icons.vpn_key,
                color: Color.fromARGB(255, 2, 147, 29)
              )
            ),
          ],
        ),
      ),
    );
  }
}