/***
 * Functions
 * Son bloques de código reutilizables que realiza una tarea específica.
 * Es como una "máquina" que recibe inputs, realiza operaciones y devuelve un resultado
 * 
 * Sintaxis básica
 * 
 * tipoRetorno nombreFuncion(parametros) {
 *  (Cuerpo de la función)
 * return valor;
 * }
 * 
 * ? Indica que la variable puede contener 2 tipos de valores
 * 
 */

//* Funciones sin parámetros y sin retorno
void saludar() {
  print('''Funciones sin parámetros ni retorno
  ¡Hola Mundo!''');
}

//* Funciones con parámetros y con retorno
int sumar(int a, int b) {
  return a + b;
}

//* Funciones con parámetros opcionales
void mostrarInfo(String nombre, [int? edad, String? ciudad]) {
  print('Nombre: $nombre');
  if (edad != null) print('Edad: $edad');
  if (ciudad != null) print('Ciudad: $ciudad');
}

//* Parámetros con nombre
void configurarApp({String? tema, bool? sonido, int? fontSize}) {
  print('Tema: $tema');
  print('Sonido: $sonido');
  print('Tamaño de fuente: $fontSize');
}

//* Con valores por defecto
void crearUsuario(String nombre, {String rol = 'usuario', bool activo = true}) {
  print('Usuario: $nombre, Rol: $rol, Activo: $activo');
}

//* Funciones Arrow
int cuadrado(int numero) {
  return numero * numero;
}

int cuadradoArrow(int numero) => numero * numero;
bool esMayorEdad(int edad) => edad >= 18;
String obtenerSaludo(String nombre) => 'Hola, $nombre!';

//* Funciones como parámetros
void procesarLista(List<int> numeros, Function(int) accion) {
  for (var numero in numeros) {
    accion(numero);
  }
}

//* Parámetros obligatorios
void registrarUsuario({required String nombre, required String email}) {
  print('Usuario: $nombre, Email: $email');
}

//* Ejemplos prácticos adicionales
int calcular(int a, int b, Function(int, int) operacion) {
  return operacion(a, b);
}

int restar(int a, int b) => a - b;

void saludarPersona({required String nombre, int? edad}) {
  if (edad != null) {
    print('Hola $nombre, tienes $edad años');
  } else {
    print('Hola $nombre');
  }
}

//* Ejemplos de funciones arrow (implementados)
double calcularAreaCirculo(double radio) => 3.1416 * radio * radio;
bool esPar(int numero) => numero % 2 == 0;
String formatearNombre(String nombre, String apellido) => '$nombre $apellido'.toUpperCase();

void main() {
  //* Funciones sin parámetros y sin retorno
  saludar();
  print('\n========================\n');

  //* Funciones con parámetros y con retorno
  int resultado = sumar(5, 3);
  print('''Funciones con parámetros y retorno
  $resultado'''); // Output: 8
  print('\n========================\n');

  //* Funciones con parámetros opcionales
  mostrarInfo('Juan');
  mostrarInfo('María', 25);
  mostrarInfo('Carlos', 30, 'Madrid');
  print('\n========================\n');

  //* Parámetros con nombre
  configurarApp(tema: 'oscuro', fontSize: 16);
  configurarApp(sonido: false);
  print('\n========================\n');

  //* Con valores por defecto
  crearUsuario('Ana'); // Usa valores por defecto
  crearUsuario('Pedro', rol: 'admin'); // Personaliza solo un parámetro
  print('\n========================\n');

  //* Funciones Arrow
  print('Funciones Arrow');
  print('Cuadrado tradicional: ${cuadrado(5)}');
  print('Cuadrado arrow: ${cuadradoArrow(5)}');
  print('Es mayor de edad (25): ${esMayorEdad(25)}');
  print('Saludo: ${obtenerSaludo("Mundo")}');
  
  // Ejemplos adicionales de funciones arrow
  print('Área círculo radio 5: ${calcularAreaCirculo(5)}');
  print('¿10 es par? ${esPar(10)}');
  print('Nombre formateado: ${formatearNombre("juan", "perez")}');
  print('\n========================\n');

  //* Funciones como parámetros
  print('Funciones como parámetros');
  var lista = [1, 2, 3, 4, 5];
  procesarLista(lista, (numero) => print(numero * 2));
  print('\n========================\n');

  //* Funciones anónimas
  print('Funciones anónimas');
  var multiplicar = (int a, int b) {
    return a * b;
  };
  print(multiplicar(4, 5)); // Output: 20
  print('\n========================\n');

  //* Parámetros obligatorios
  registrarUsuario(nombre: 'Juan', email: 'juan@email.com');
  // registrarUsuario(nombre: 'Juan'); // ERROR: falta el parámetro required 'email'
  print('\n========================\n');

  //* Ejemplo práctico
  print('Ejemplos prácticos');
  print('Suma: ${calcular(5, 3, sumar)}');
  print('Resta: ${calcular(5, 3, restar)}');
  print('Multiplicación: ${calcular(5, 3, (a, b) => a * b)}'); // Función anónima
  
  saludarPersona(nombre: 'Ana', edad: 25);
  saludarPersona(nombre: 'Carlos');
}