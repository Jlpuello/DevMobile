void main() {
  Persona p = new Persona(nombre: 'Jorge', apellido: 'Puello', edad: 33);

  print(p);

  Map<String, dynamic> datos = {
    'nombre': 'Leonardo',
    'apellido': 'coneo',
    'edad': 23,
  };

  Persona p2 = new Persona.apiData(datos);

  print(p2);
}

class Persona {
  String nombre = '';
  String apellido = '';
  int edad = 0;
  String mensaje = '';

  Persona({
    required String nombre,
    required String apellido,
    required int edad,
  }) {
    this.nombre = nombre;
    this.apellido = apellido;
    this.edad = edad;
    assert(edad >= 18, mensaje = 'El usuario es Mayor de edad');
  }

  Persona.apiData(Map<String, dynamic> datos)
    : nombre = datos['nombre'],
      apellido = datos['apellido'],
      edad = datos['edad'];

  @override
  String toString() {
    return 'Datos de Persona -> Nombre: $nombre, Apellido: $apellido, Edad: $edad - $mensaje';
  }
}
