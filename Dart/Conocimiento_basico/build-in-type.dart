void main() {

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

print('''\nOperaciones numericas

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

//* Listas
print('Listas\n');

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

}