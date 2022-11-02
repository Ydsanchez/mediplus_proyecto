class Persona {
  var identificacion;
  var nombre;
  var fechaNac;
  var celular;
  var direccion;
  var correo;
  var contrasena;

  Persona({
    this.identificacion,
    this.nombre,
    this.fechaNac,
    this.celular,
    this.direccion,
    this.correo,
    this.contrasena
    });
}

List<Persona> listPersona = [
  Persona(
    identificacion: '1003',
    nombre: 'Yeferson',
    fechaNac: DateTime(2000, 12, 02),
    celular: '313',
    direccion: 'mz 9 cs 24',
    correo: 'yd@gmail.com',
    contrasena: '1001'
  )
];