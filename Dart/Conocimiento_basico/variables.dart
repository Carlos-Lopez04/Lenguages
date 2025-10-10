/** Tipos de variables
 * 
 * int -> números enteros
 * double -> numeros decimales
 * num -> Se puede utilizar para otros
 * 
 * string -> cadenas
 * $ -> variables simples
 * {3+5} -> expresiones
 * 
 * bool -> boolean
 * 
 * list -> coleccion ordenada
 * 
 * map -> coleccion de clave-valor
 * 
 * dynamic -> Desactiva la verificacion de tipos
 * 
 * var -> Infiere el tipo automaticamente
 */


void main() {
//* Declaracion de variables con var (Inferencia de tipo)

var nombre = "Juan";
var edad; //? Se puede iniciar con una variable vacia para despues establecer un uso concreto dentro del codigo
var precio = 20.50;
var estatus = true;

edad=20;

print('Declaracion de variables con var (Inferencia de tipo)\n');
print(nombre);
print('''\nSu nombre es $nombre
y su edad es $edad años''');
print('========================');

//* Declaracion de variables con tipo explicito
//? Solo se puede sustituir la informacion de la variable del mismo tipo previamente establecido

String nombres = 'Maria';
int edades = 21;
double precios = 29.90;
bool esEstudiante = false;

print('Declaracion de variables con tipo explicito\n');
print('''Nombre: $nombres
Edad: $edades''');

print('\nElla vende un chocolate a $precios pesos');
print('========================');

//* Declaracon con tipo dinamico
//? Son aquellas variables que pueden cambiar de tipo sin afectar el codigo dependiendo de su uso
print('Declaracion con tipo dinamico\n');

dynamic variableDinamica = "Hola"; // Inicia como string
print(variableDinamica);

variableDinamica = 100;      // ✅ Ahora es int
print('\n$variableDinamica\n');

variableDinamica = true;     // ✅ Ahora es bool
print(variableDinamica);
print('========================');

//* Declaración con final (Inmutable - valor conocido en tiempo de ejecución)
final nombrefin = "Carlos";
final int edadfin = 40;
// nombre = "Pedro"; ❌ ERROR - No se puede reasignar (Inmutable - valor conocido en tiempo de ejecución)

print('Declaracion con final\n');
print('Su nombre es $nombrefin y su edad es $edadfin año\n');
}

/**
 * En todos estos ejemplos se puede notar que tienen en comun
 * el que se deben de iniciar, ya sea con alguna de las
 * formas para declarar (var, tipo explicito, dinamica y/o final)
 */

/**
 * En caso de querer usar una misma variable previamente usada,
 * primero debe de estar inicializada y despues se puede usar
 * para darle otro valor; como es el caso de los contadores.
 */