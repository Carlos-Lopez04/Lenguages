/**
 * Son símbolos especiales que realizan operaciones específicas sobre operandos
 * 
 * Precedencia de Operadores
 * 1. () [] ?[] . ?. ..
   2. ! ~ - (unario) ++ -- 
   3. * / % ~/
   4. + - (binario)
   5. << >> >>>
   6. < <= > >= as is is!
   7. == !=
   8. &
   9. ^
  10. |
  11. &&
  12. ||
  13. ?? 
  14. ?: (ternario)
  15. = *= /= ~/= %= += -= <<= >>= &= ^= |=
 */

void main() {
  operadoresAritmeticos();
  operadoresIncremento();
  operadoresComparacion();
  operadoresLogicos();
  operadoresAsignacion();
  operadoresNullAware();
  operadoresTipo();
  operadoresAcceso();
  operadoresCondicional();
  operadoresCascada();
  operadoresBit();
  ejemplo_practico();
}

void operadoresAritmeticos() {
  print('Operadores aritméticos');
  int a = 10;
  int b = 3;
  
  print(a + b);  // 13 - Suma
  print(a - b);  // 7  - Resta
  print(a * b);  // 30 - Multiplicación
  print(a / b);  // 3.333... - División (siempre retorna double)
  print(a ~/ b); // 3  - División entera
  print(a % b);  // 1  - Módulo (resto de la división)
  print(-a);     // -10 - Negación
  print('\n========================\n');
}

void operadoresIncremento() {
  print('Operadores de incremento');
  int x = 5;
  
  print(x++); // 5 (post-incremento: usa el valor, luego incrementa)
  print(x);   // 6
  print(++x); // 7 (pre-incremento: incrementa, luego usa el valor)
  print(x--); // 7 (post-decremento)
  print(x);   // 6
  print(--x); // 5 (pre-decremento)
  print('\n========================\n');
}

void operadoresComparacion() {
  print('Operadores de comparación');
  int a = 10;
  int b = 5;
  int c = 10;
  
  print(a == c); // true - Igualdad
  print(a != b); // true - Desigualdad
  print(a > b);  // true - Mayor que
  print(a < b);  // false - Menor que
  print(a >= c); // true - Mayor o igual
  print(a <= b); // false - Menor o igual
  
  // Con strings
  print('hola' == 'hola'); // true
  // print('a' < 'b');        // true (comparación alfabética)
  print('\n========================\n');
}

void operadoresLogicos() {
  print('Operadores lógicos');
  bool esMayor = true;
  bool tienePermiso = false;
  int edad = 25;
  
  print(esMayor && tienePermiso); // false - AND
  print(esMayor || tienePermiso); // true - OR
  print(!esMayor);                // false - NOT
  
  // Combinados
  print(edad >= 18 && edad <= 65); // true - Está entre 18 y 65
  print(edad < 18 || edad > 65);   // false - No es joven ni mayor
  print('\n========================\n');
}

void operadoresAsignacion() {
  print('Operadores de asignación');
  int y = 10; // Asignación básica
  
  y += 5;  // y = y + 5 → 15
  y -= 3;  // y = y - 3 → 12
  y *= 2;  // y = y * 2 → 24
  y ~/= 4; // y = y ~/ 4 → 6
  y %= 4;  // y = y % 4 → 2

  print(y); // 2
  
  // Asignación con null-aware
  print('\nAsignación con null-aware');
  int? numero;
  print(numero);
  numero ??= 100; // Solo asigna si numero es null
  print(numero); // 100
  
  numero ??= 200; // No se ejecuta porque numero ya tiene valor
  print(numero); // 100
  print('\n========================\n');
}

void operadoresNullAware() {
  print('Operadores Null-Aware');
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
  print('\n========================\n');
}

void operadoresTipo() {
  print('Operadores de Tipo\n');
  dynamic valor = 'Hola Mundo';
  
  // is - Verifica el tipo
  print(valor is String);    // true
  print(valor is int);       // false
  print(valor is! int);      // true (no es int)
  
  // as - Casting de tipo
  String texto = valor as String; // Convierte dynamic a String
  print(texto.length); // 10
  
  // Uso práctico
  procesarDato(100);
  procesarDato('Texto');
  procesarDato([1, 2, 3]);
  print('\n========================\n');
}

void procesarDato(dynamic dato) {
  if (dato is int) {
    print('Es entero: ${dato * 2}');
  } else if (dato is String) {
    print('Es string: ${dato.toUpperCase()}');
  } else if (dato is List) {
    print('Es lista con ${dato.length} elementos');
  }
}

class Persona {
  String nombre = 'Juan';
  String? apellido;
  
  String saludar() => 'Hola!';
}

void operadoresAcceso() {
  Persona? persona = Persona();
  
  // . - Acceso a miembros
  print('Operadores de Acceso a miembros\n');
  print(persona.nombre);    // Juan
  print(persona.saludar()); // Hola!
  
  // ?. - Acceso seguro a miembros
  Persona? personaNula;
  print(personaNula?.nombre);    // null
  print(personaNula?.saludar()); // null
  
  // [] - Acceso a elementos de listas/maps
  List<int> numeros = [1, 2, 3];
  print(numeros[0]); // 1
  
  Map<String, int> edades = {'Juan': 25, 'Maria': 30};
  print(edades['Juan']); // 25
  
  // ?[] - Acceso seguro a elementos
  List<int>? listaNula;
  print(listaNula?[0]); // null
  print('\n========================\n');
}

void operadoresCondicional() {
  print('Operadores de Condicional\n');
  int edad = 20;
  bool esEstudiante = true;
  
  // Operador ternario
  String mensaje = edad >= 18 ? 'Mayor de edad' : 'Menor de edad';
  print(mensaje); // Mayor de edad
  
  // Ternario anidado
  double descuento = esEstudiante && edad < 25 ? 0.5 : 
                    edad > 65 ? 0.3 : 0.0;
  print('Descuento: $descuento'); // 0.5
  
  // Condicional con null-aware
  String? nombre;
  String nombreDisplay = nombre ?? 'Invitado';
  print('Bienvenido, $nombreDisplay'); // Bienvenido, Invitado
  print('\n========================\n');
}

class Persona2 {
  String nombre_c = '';
  int edad_c = 0;
  
  void mostrarInfo() {
    print('$nombre_c - $edad_c años');
  }
}

void operadoresCascada() {
  print('Operadores de Cascada\n');
  // Sin cascada
  Persona2 p1 = Persona2(); 
  p1.nombre_c = 'Ana';
  p1.edad_c = 25; 
  p1.mostrarInfo();
  
  // Con cascada (mucho más limpio)
  Persona2 p2 = Persona2()
    ..nombre_c = 'Carlos'   
    ..edad_c = 30 
    ..mostrarInfo();
    
  // Con listas
  List<int> numeros = []
    ..add(1)
    ..add(2)
    ..add(3)
    ..remove(2);
  print(numeros); // [1, 3]
  print('\n========================\n');
}

void operadoresBit() {
  int a = 5;  // 0101 en binario
  int b = 3;  // 0011 en binario
  
  print('Operadores Bit a Bit\n');
  print(a & b);   // 1  - AND (0101 & 0011 = 0001)
  print(a | b);   // 7  - OR  (0101 | 0011 = 0111)
  print(a ^ b);   // 6  - XOR (0101 ^ 0011 = 0110)
  print(~a);      // -6 - NOT (complemento a 2)
  print(a << 1);  // 10 - Desplazamiento izquierda (0101 << 1 = 1010)
  print(a >> 1);  // 2  - Desplazamiento derecha (0101 >> 1 = 0010)
  print('\n========================\n');
}

void precedencia_operadores() {
  print('Precedencia de operadores\n');
  int resultado = 2 + 3 * 4; // 14 (no 20) - La multiplicación tiene precedencia
  print(resultado);
  
  // Usa paréntesis para cambiar precedencia
  int resultado2 = (2 + 3) * 4; // 20
  print(resultado2);
  print('\n========================\n');
}

void ejemplo_practico() {
  print('Ejemplo practico\n');
  // Ejemplo integrado usando múltiples operadores
  String? nombreUsuario;
  int? edadUsuario;
  bool esPremium = false;
  
  // Operadores null-aware y ternarios
  String nombre = nombreUsuario ?? 'Invitado';
  String categoria = (edadUsuario ?? 0) >= 18 ? 'Adulto' : 'Menor';
  double descuento = esPremium ? 0.2 : 0.0;
  
  print('Usuario: $nombre');
  print('Categoría: $categoria');
  print('Descuento: ${descuento * 100}%');
  
  // Operadores de asignación
  int puntos = 100;
  puntos += esPremium ? 50 : 10; // puntos = puntos + (esPremium ? 50 : 10)
  print('Puntos totales: $puntos');
  
  // Operadores de comparación y lógicos
  bool puedeAcceder = (edadUsuario ?? 0) >= 18 && esPremium;
  print('¿Puede acceder? $puedeAcceder');
  
  // Operadores de cascada
  List<String> usuarios = []
    ..add('Ana')
    ..add('Carlos')
    ..add('Maria')
    ..removeWhere((user) => user == 'Carlos');
  
  print('Usuarios finales: $usuarios\n'); // [Ana, Maria]
}