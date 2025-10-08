/** Tipos de variables
 * 
 * int -> números enteros
 */

//* Declaracion de variables con var (Inferencia de tipo)

void main() {

var nombre = "Juan";
var edad = 19;
var precio = 20.50;
var estatus = true;

print('Declaracion de variables con var (Inferencia de tipo)\n');
print(nombre);
print("\nSu nombre es $nombre");
print('========================');

//* Declaracion de variables con tipo explicito

String nombres = 'Maria';
int edades = 21;
double precios = 29.90;
bool esEstudiante = false;

print('Declaracion de variables con tipo explicito\n');
print('''Nombre: $nombres
Edad: $edades''');

print('\nElla vende un chocolate a $precios');
print('========================');

//* Declaracon con tipo dinamico
print('Declaracion con tipo dinamico\n');

dynamic variableDinamica = "Hola";
print(variableDinamica);

variableDinamica = 100;      // ✅ Ahora es int
print('\n$variableDinamica\n');

variableDinamica = true;     // ✅ Ahora es bool
print(variableDinamica);
print('========================');

//* Declaración con final (Inmutable - valor conocido en tiempo de ejecución
final nombrefin = "Carlos";
final int edadfin = 40;
// nombre = "Pedro"; ❌ ERROR - No se puede reasignar (Inmutable - valor conocido en tiempo de ejecución)

print('Declaracion con final\n');
print('Su nombre es $nombrefin y su edad es $edadfin\n');
}