import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediplus_proyecto/ui/auth/login.dart';
import 'package:mediplus_proyecto/ui/auth/principal.dart';
import 'package:mediplus_proyecto/ui/pages/inicioAdministrativo.dart';
import 'package:mediplus_proyecto/ui/pages/inicioCliente.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MediPlus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const inicioAdministrativo(),
    );
  }
}