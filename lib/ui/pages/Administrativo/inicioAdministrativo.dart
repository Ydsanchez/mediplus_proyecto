// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class inicioAdministrativo extends StatefulWidget {
  const inicioAdministrativo({super.key});

  @override
  State<inicioAdministrativo> createState() => _inicioAdministrativoState();
}

class _inicioAdministrativoState extends State<inicioAdministrativo> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Card makeDashBoardItem(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [(Color.fromARGB(255, 2, 147, 29)), (Color.fromARGB(255, 1, 55, 11))],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ]
        ),
        child: InkWell(
          onTap: () {

            if (index==0) {
              //item: Perfil Cliente
            }

            if (index==1) {
              //item: Produtos
            }

            if (index==2) {
              //item: Carrito de compras
            }

            if (index==3) {
              //item: Facturas
            }

            if (index==4) {
              //item: Pedidos
            }

            if (index==5) {
              //item: Alamacenamiento
            }
          },

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget initWidget() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                  child: const Text("Bienvenido a MediPlus",
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
            const SizedBox(width: 50),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeDashBoardItem("Perfil", "assets/icons/usuario.png", 0),
                makeDashBoardItem("Medicinas", "assets/icons/medicina.png", 1),
                makeDashBoardItem("Carrito", "assets/icons/carrito-de-compras (1).png", 2),
                makeDashBoardItem("Factura", "assets/icons/factura.png", 3),
                makeDashBoardItem("Pedidos", "assets/icons/pedido-en-linea.png", 4),
                makeDashBoardItem("Almacenamiento", "assets/icons/valores.png", 5),
              ],
            ),
          )
        ],
      ),
    );
  }
}