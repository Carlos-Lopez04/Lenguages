void main() {

//! Tipos primitivos o Basicos
//* Numeros

//? Enteros
int edad = 25;
int negativo = -10;
int hexadecimal = 0xDEADBEEF;
// int binario = 0b1010; 

//? Números de punto flotante / decimales
double precio = 19.99;
double pi = 3.1415926535;
double exponente = 1.42e5; //? 142000.0

//? num - puede ser int o double
num valorFlexible = 10;
valorFlexible = 25.50; //? Cambia de int a double

//? Operaciones
int a = 10;
int b = 3;

num suma = a+b;
num resta = a-b;
num multiplicacion = a*b;
num division = a/b;
num division_entera = a~/b;
num modulo = a%b;

print('''\nTipos basicos

Operaciones numericas

La suma es -> $suma
La resta es -> $resta
La multiplicacion es -> $multiplicacion
La division es -> $division
La division entera es -> $division_entera
El modulo es -> $modulo\n''');
print('========================\n');

//* Strings

//? Basico
String nombre = 'Juan';
String apellido = 'Perez';

print('''Cadenas

Nombre -> $nombre
Apellido -> $apellido''');

//? Concatenacion
String nombre_completo = nombre + ' ' + apellido;

print('Nombre completo -> $nombre_completo\n');
print('========================\n');

//* Booleanos

bool esVerdadero = true;
bool esFalso = false;
bool esMayor = (10>5);
bool tiene_licencia = true;
bool tiene_permiso = (edad >= 18 && tiene_licencia);

print('''Booleanos

Verdadero -> $esVerdadero
Falso -> $esFalso;
Mayor -> $esMayor
Tiene permismo -> $tiene_permiso\n''');
print('========================\n');

//! Tipos de colecciones
//* Listas
print('''Tipos de colecciones

Listas\n''');

//? Lista de longitud fija
List<int> numerosFijos = List<int>.filled(3, 0); // [0, 0, 0]

//? Lista de longitud variable (más común)
List<String> frutas = ['manzana', 'naranja'];
List<dynamic> mixta = [1, 'texto', true];

//? Operaciones comunes
frutas.add('plátano');        // Añadir elemento
frutas.insert(1, 'uva');      // Insertar en posición
frutas.remove('manzana');     // Remover elemento

print(frutas.length);         // Longitud
print(frutas[0]);             // Acceso por índice
print(frutas.contains('uva')); // Verificar existencia

// Spread operator (...)
List<String> todasFrutas = [...frutas, 'mango', 'piña'];

print(todasFrutas);
print('\n========================\n');

//* Conjuntos
print('Conjuntos\n');

//? Creación
Set<int> numerosUnicos = {1, 2, 3, 3, 2}; // {1, 2, 3}
Set<String> colores = {'rojo', 'azul', 'verde'};

//? Operaciones
colores.add('amarillo');
colores.remove('rojo');

print(colores.contains('azul')); // true Lanza si esta o no dentro del conjunto

//? Operaciones de conjunto
Set<int> setA = {1, 2, 3};
Set<int> setB = {2, 3, 4};

print(setA.union(setB));        // {1, 2, 3, 4} Une ambas
print(setA.intersection(setB)); // {2, 3} Los que estan similares
print(setA.difference(setB));   // {1} Solo muestra el diferente
print('\n========================\n');

//* Mapas

//? Creación
Map<String, dynamic> persona = {
  'nombre': 'María',
  'edad': 30,
  'soltera': true,
  'hobbies': ['leer', 'nadar']
};

Map<int, String> estados = {
  1: 'Pendiente',
  2: 'Aprobado',
  3: 'Rechazado'
};

//? Operaciones
print('Mapas\n');
print(persona['nombre']);        // Acceso
persona['ciudad'] = 'Madrid';    // Añadir/actualizar
persona.remove('soltera');       // Remover
print(persona.containsKey('edad')); // Verificar clave
print(persona.length);           // Número de pares

//? Iteración
persona.forEach((clave, valor) {
  print('$clave: $valor');
});
print('\n========================\n');

//! Tipos especiales
//* Dinamicos
dynamic variable = 'Soy texto';
variable = 100;        // Ahora es int
variable = [1, 2, 3];  // Ahora es List


print('''Dinamicos

$variable''');
print('\n========================\n');

//* Inferencia de tipos
var var_nombre = 'Carlos';     // Inferido como String
var var_edad = 25;             // Inferido como int  
var var_precio = 19.99;        // Inferido como double
var var_lista = [1, 2, 3];     // Inferido como List<int>

print('''Inferencia de tipos

Datos de la persona
Nombre -> $var_nombre
Edad -> $var_edad''');
print('\n========================\n');

//* Constantes

//? valor constante en tiempo de compilación
const double pi_const = 3.1416;
const List<int> numeros = [1, 2, 3];

//? Con constructores
// const punto = Point(0, 0);

print('''Constantes

El valor de pi es -> $pi_const''');

print('\n========================\n');

//* Final
//? Asignación única en tiempo de ejecución
final fechaActual = DateTime.now();
final String nombreUsuario = 'Ana';

print('''Final

Hoy es -> $fechaActual''');
print('\n========================\n');

//! Tipos para manejo de nulos
//* Null Safety ? ! late

//? Tipo nullable (puede ser null)
// String? nombreNullable = null;
// int? edadNullable;

//? Acceso seguro
// print(nombreNullable?.length); // null si nombreNullable es null

//? Assertion operator (!)
// String nombre_null = nombreNullable!; // Confiamos en que no es null

//? late initialization
// late String descripcion;
// void inicializar() {
//   descripcion = 'Valor inicializado después';
// }

//! Tipos para colecciones especializados
//* Iterable - Secuencia Lazy de elementos

Iterable<int> numeros_iter = [1, 2, 3, 4, 5];
var pares_iter = numeros.where((n) => n % 2 == 0);
var dobles_iter = numeros.map((n) => n * 2);

print('''Secuencia Lazy

La lista original es:
$numeros_iter

Los pares son:
$pares_iter

Los dobles son:
$dobles_iter''');
print('\n========================\n');

//* Runes - Puntos de codigo Unicode
String emoji = '😀';
Runes runes = emoji.runes;
print('''Runes

$runes'''); // (128512)

String heart = '\u2665';
print(heart); // ♥
print('\n========================\n');

//* Symbols - Identificadores utilizados en reflexion
Symbol s = #nombreSimbolo;
print(s); // Symbol("nombreSimbolo")

//! Caracteristicas Clave
//? En Dart, TODO es un objeto
int numero = 42;
print(numero.isEven); // true - método en un int
print(42.toString()); // "42" - método en un literal

//? Dart infiere el tipo automáticamente
var lista = [1, 2, 3]; // List<int>
var mapa = {'a': 1, 'b': 2}; // Map<String, int>

//?Dart puede realizar conversion entre datos
// String → int/double
int numero = int.parse('123');
double decimal = double.parse('3.14');

// int/double → String
String textoNumero = 123.toString();
String textoDecimal = 3.14.toStringAsFixed(2); // "3.14"

//? Dart puede verificar tipos en tiempo de ejecucion
var valor = 'Hola';

print(valor is String);    // true
print(valor is int);       // false  
print(valor is! bool);     // true
}