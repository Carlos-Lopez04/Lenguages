/***
 * Functions
 * Son bloques de codigo reutilizables que realiza una tarea especifica.
 * Es como una "maquina" que recibe inputs, realiza operaciones y devuelve un resultado
 * 
 * Sintaxis basica
 * 
 * tipoRetorno nombreFuncion(parametros) {
 *  (Cuerpo de la función)
 * return valor;
 * }
 * 
 * ? Indica que la variable puede contener 2 tipos de valores
 * 
 */
void main() {

//* Funciones sin parametros y sin retorno
void saludar() {
  print('''Funciones sin parametros ni retorno
  ¡Hola Mundo!''');
}

// Uso
saludar(); // Output: ¡Hola Mundo!
print('\n========================\n');

//* Funciones con parametros y con retorno
int sumar(int a, int b) {
  return a + b;
}

// Uso
int resultado = sumar(5, 3);
print('''Funciones con parametros y retorno
  $resultado'''); // Output: 8
print('\n========================\n');

//* Funciones con parametros opcionales
//? Parámetros opcionales posicionales []
void mostrarInfo(String nombre, [int? edad, String? ciudad]) {
  print('Nombre: $nombre');
  if (edad != null) print('Edad: $edad');
  if (ciudad != null) print('Ciudad: $ciudad');
}

// Uso
mostrarInfo('Juan');
mostrarInfo('María', 25);
mostrarInfo('Carlos', 30, 'Madrid');
print('\n========================\n');

//* Parametros con nombre
void configurarApp({String? tema, bool? sonido, int? fontSize}) {
  print('Tema: $tema');
  print('Sonido: $sonido');
  print('Tamaño de fuente: $fontSize');
}

// Uso
configurarApp(tema: 'oscuro', fontSize: 16);
configurarApp(sonido: false);
print('\n========================\n');

//* Con valores por defecto
void crearUsuario(String nombre, {String rol = 'usuario', bool activo = true}) {
  print('Usuario: $nombre, Rol: $rol, Activo: $activo');
}

// Uso
crearUsuario('Ana'); // Usa valores por defecto
crearUsuario('Pedro', rol: 'admin'); // Personaliza solo un parámetro
print('\n========================\n');

//* Funciones Arrow

/** Tipos de funciones que se pueden convertir a arrow
 *? ✅ Numéricas
double calcularAreaCirculo(double radio) => 3.1416 * radio * radio;
int factorial(int n) => n <= 1 ? 1 : n * factorial(n - 1);

//? ✅ Booleanas
bool esPar(int numero) => numero % 2 == 0;
bool contieneTexto(String texto, String busqueda) => texto.contains(busqueda);

//? ✅ Strings
String formatearNombre(String nombre, String apellido) => '$nombre $apellido'.toUpperCase();
String obtenerIniciales(String nombre) => nombre.split(' ').map((p) => p[0]).join();

//? ✅ Listas
List<int> generarSecuencia(int n) => List.generate(n, (index) => index + 1);
List<String> dividirPalabras(String texto) => texto.split(' ');

//? ✅ Maps
Map<String, dynamic> crearUsuario(String nombre, int edad) => 
    {'nombre': nombre, 'edad': edad, 'activo': true};
 */

// Forma tradicional
int cuadrado(int numero) {
  return numero * numero;
}

// Forma arrow
int cuadrado_arrow(int numero) => numero * numero;

// Más ejemplos
bool esMayorEdad(int edad) => edad >= 18;
String obtenerSaludo(String nombre) => 'Hola, $nombre!';
print('\n========================\n');

//* Funciones como parametros
// Dart trata las funciones como 'ciudadanos de primera clase'
void procesarLista(List<int> numeros, Function(int) accion) {
  for (var numero in numeros) {
    accion(numero);
  }
}

// Uso
print('Funciones como parametros');
var lista = [1, 2, 3, 4, 5];
procesarLista(lista, (numero) => print(numero * 2));
print('\n========================\n');

//* Funciones anonimas
var multiplicar = (int a, int b) {
  return a * b;
};

// Uso
print('Funciones anonimas');
print(multiplicar(4, 5)); // Output: 20
print('\n========================\n');

//* Parametros obligatorios
//? Para hacer parametros con nombre obligatorios

void registrarUsuario({required String nombre, required String email}) {
  print('Usuario: $nombre, Email: $email');
}

// Uso
registrarUsuario(nombre: 'Juan', email: 'juan@email.com');
// registrarUsuario(nombre: 'Juan'); // ERROR: falta el parámetro required 'email'
print('\n========================\n');
}

//* Ejemplo practico
void main2() {
  // Ejemplos de uso
  print('Suma: ${calcular(5, 3, sumar)}');
  print('Resta: ${calcular(5, 3, restar)}');
  print('Multiplicación: ${calcular(5, 3, (a, b) => a * b)}'); // Función anónima
  
  saludarPersona(nombre: 'Ana', edad: 25);
}

// Función que recibe otra función como parámetro
int calcular(int a, int b, Function(int, int) operacion) {
  return operacion(a, b);
}

int sumar(int a, int b) => a + b;
int restar(int a, int b) => a - b;

void saludarPersona({required String nombre, int? edad}) {
  if (edad != null) {
    print('Hola $nombre, tienes $edad años');
  } else {
    print('Hola $nombre');
  }
}