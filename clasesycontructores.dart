void main() {
  print('Actividad de Clases y Constructores');

  Persona p = new Persona(
    'Jorge',
    'Puello',
    30,
    '3167727594',
    'puelloconeo23@hotmail.com',
  );

  Animales a = new Animales(
    raza: 'BullDog',
    propietario: 'Jorge',
    fecha_nacimineto: '05-03-2020',
    vacunas: ['Fiebre', 'Tetano', 'Rabia'],
  );

  print(p);
  print(a);
}

class Persona {
  String nombre = '';
  String apellido = '';
  int edad = 0;
  String telefono = '';
  String email = '';

  Persona(nombre, apellido, edad, telefono, email) {
    this.nombre = nombre;
    this.apellido = apellido;
    this.edad = edad;
    this.telefono = telefono;
    this.email;
  }

  @override
  String toString() {
    return 'Persona  -> Nombre: $nombre, Apellido: $apellido, edad: $edad, telefono: $telefono, email: $email';
  }
}

class Animales {
  String raza = '';
  String propietario = '';
  String fecha_nacimiento = '';
  List vacunas = [];

  Animales({
    required String raza,
    required String propietario,
    required String fecha_nacimineto,
    required List vacunas,
  }) {
    this.raza = raza;
    this.propietario = propietario;
    this.fecha_nacimiento = fecha_nacimineto;
    this.vacunas = vacunas;
  }

  @override
  String toString() {
    return 'Animal -> raza :$raza, propietario : $propietario, fecha_nacimiento $fecha_nacimiento, vacunas: $vacunas';
  }
}
