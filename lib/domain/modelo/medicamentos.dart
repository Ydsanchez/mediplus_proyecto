// ignore_for_file: non_constant_identifier_names

class Medicamentos {
  final String img, presentacion, nombre, descripcion;
  final int precio, cantidad, id;

  Medicamentos(
    this.img, 
    this.presentacion, 
    this.nombre, 
    this.descripcion, 
    this.precio, 
    this.cantidad, 
    this.id,
  );
}

List<Medicamentos> ListaMedicamentos = [
  Medicamentos(
    "assets/images/NAPROXENO.png",
    "Tableta 250 mg", 
    "Naproxeno", 
    "Medicamento de consumo oral con 250mg por pastilla; conservar en un lugar fresco", 
    2500, 
    5, 
    1),

  Medicamentos(
    "assets/images/APRONAX.png",
    "Tableta 275 mg", 
    "Apronax", 
    "Medicamento de consumo oral con 275mg por pastilla en gel; conservar en un lugar fresco", 
    5000, 
    3, 
    2)
];