/**
 * Son simbolos especiales que realizan operaciones especificas sobre operandos
 */

void main() {
//* Operadores aritmeticos
  int a = 10;
  int b = 3;
  
print('Operadores aritmeticos');
  print(a + b);  // 13 - Suma
  print(a - b);  // 7  - Resta
  print(a * b);  // 30 - Multiplicación
  print(a / b);  // 3.333... - División (siempre retorna double)
  print(a ~/ b); // 3  - División entera
  print(a % b);  // 1  - Módulo (resto de la división)
  print(-a);     // -10 - Negación
print('\n========================\n');

//* Operadores de incremento
  int x = 5;
  
print('Operadores de incremento');
  print(x++); // 5 (post-incremento: usa el valor, luego incrementa)
  print(x);   // 6
  
  print(++x); // 7 (pre-incremento: incrementa, luego usa el valor)
  
  print(x--); // 7 (post-decremento)
  print(x);   // 6
  
  print(--x); // 5 (pre-decremento)
print('\n========================\n');

//* Operadores de comparacion
  int a_com = 10;
  int b_com = 5;
  int c_com = 10;
  
print('Operadores de comparacion');
  print(a_com == c_com); // true - Igualdad
  print(a_com != b_com); // true - Desigualdad
  print(a_com > b_com);  // true - Mayor que
  print(a_com < b_com);  // false - Menor que
  print(a_com >= c_com); // true - Mayor o igual
  print(a_com <= b_com); // false - Menor o igual
  
  // Con strings
  print('hola' == 'hola'); // true
//   print('a' < 'b');        // true (comparación alfabética)
print('\n========================\n');

//* Operadores logicos
bool esMayor = true;
bool tienePermiso = false;
int edad = 25;
  
print('Operadores logicos');
  print(esMayor && tienePermiso); // false - AND
  print(esMayor || tienePermiso); // true - OR
  print(!esMayor);                // false - NOT
  
  // Combinados
  print(edad >= 18 && edad <= 65); // true - Está entre 18 y 65
  print(edad < 18 || edad > 65);   // false - No es joven ni mayor
print('\n========================\n');

//* Operadores de asignacion
  int y = 10; // Asignación básica
  
  y += 5;  // x = x + 5 → 15
  y -= 3;  // x = x - 3 → 12
  y *= 2;  // x = x * 2 → 24
  y ~/= 4; // x = x ~/ 4 → 6
  y %= 4;  // x = x % 4 → 2

print('Operadores de asignacion');
  print(y); // 2
  
  // Asignación con null-aware
print('\nAsignacion con null-aware');
  int? numero;
  print(numero);
  numero ??= 100; // Solo asigna si numero es null
  print(numero); // 100
  
//   numero ??= 200; // No se ejecuta porque numero ya tiene valor
//   print(numero); // 100
print('\n========================\n');

//* Operadores Null-Aware (Importante)
  String? nombre;
  String? apellido = 'Pérez';
  
  // ?? - Operador de fusión nula
  print(nombre ?? 'Anónimo');        // Anónimo (usa valor por defecto si es null)
  print(apellido ?? 'Desconocido');  // Pérez (usa el valor si no es null)
  
  // ??= - Asignación si es nulo
  nombre ??= 'Juan';
  apellido ??= 'Gómez';
  print('$nombre $apellido'); // Juan Pérez
  
  // ?. - Acceso seguro a miembros
  String? texto;
  print(texto?.length);     // null (no causa error)
  print(apellido?.length);  // 5
  
  // ! - Operador de afirmación nula (solo si estás SEGURO)
  String nombreSeguro = nombre!; // Convierte String? a String
  print(nombreSeguro.toUpperCase()); // JUAN
}

