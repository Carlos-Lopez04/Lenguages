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

print('''\nOperaciones

La suma es -> $suma
La resta es -> $resta
La multiplicacion es -> $multiplicacion
La division es -> $division
La division entera es -> $division_entera
El modulo es -> $modulo\n''');

//* Strings

//? Basico
String nombre = 'Juan';
String apellido = 'Perez';

print('''Cadenas

Nombre -> $nombre
Apellido -> $apellido''');

//? Concatenacion
String nombre_completo = nombre + ' ' + apellido;

print('Nombre completo -> $nombre_completo');

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
Tiene permismo -> $tiene_permiso''');

//*
}