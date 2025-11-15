
/** Loops
 * Son estructuras que permiten repetir un bloque de código múltiples veces.
 */

void main() {
        for_();
        list_loop();
        colecciones_();
        foreach_();
        while_();
        do_while_();
        break_();
        continue_();
}

//* for loop (Bucle for tradicional)

/** Sintaxis
 * for (inicialización; condición; incremento) {
  // Código a repetir
}

  * Cuando usarlo:
Cuando sabes las iteraciones

  * Ventaja
Control preciso del indice
 */

void for_() {
  print('Bucle For\n');
  // Imprimir números del 1 al 5
  for (int i = 1; i <= 5; i++) {
    print('Número: $i');
  }
  // Output: Número: 1, Número: 2, Número: 3, Número: 4, Número: 5
  print('');

  // Contar hacia atrás
  for (int i = 5; i >= 1; i--) {
    print('Cuenta regresiva: $i');
  }
  // Output: 5, 4, 3, 2, 1
  print('');

  // De 2 en 2
  for (int i = 0; i <= 10; i += 2) {
    print('Par: $i');
  }
  // Output: 0, 2, 4, 6, 8, 10
  print('\n========================\n');
}

//* Con listas
void list_loop() {
  print('Con listas\n');
  List<String> frutas = ['manzana', 'banana', 'naranja', 'uva'];
  
  // Recorrer lista por índice
  for (int i = 0; i < frutas.length; i++) {
    print('Fruta ${i + 1}: ${frutas[i]}');
  }
  // Output: Fruta 1: manzana, Fruta 2: banana, etc.
  print('');

  // Calcular suma de una lista de números
  List<int> numeros = [1, 2, 3, 4, 5];
  int suma = 0;
  
  for (int i = 0; i < numeros.length; i++) {
    suma += numeros[i];
  }
  print('La suma es: $suma'); // Output: La suma es: 15
  print('\n========================\n');
}

//* for-in loop (Para colecciones)

/** Sintaxis
 * for (tipo variable in coleccion) {
  // Código a repetir
} 
  * Cuando usarlo:
Para recorrer colecciones
  
  * Ventaja
Sintaxis mas limpia
*/

void colecciones_() {
  print('Con colecciones\n');
  List<String> colores = ['rojo', 'azul', 'verde', 'amarillo'];
  
  // Recorrer lista (más simple que for tradicional)
  for (String color in colores) {
    print('Color: $color');
  }
  // Output: Color: rojo, Color: azul, etc.
  print('');

  // Con sets
  Set<int> numerosUnicos = {1, 2, 3, 4, 5};
  for (int numero in numerosUnicos) {
    print('Número único: $numero');
  }
  print('');

  // Con strings (recorre caracteres)
  String palabra = 'Hola';
  for (String letra in palabra.split('')) {
    print('Letra: $letra');
  }
  // Output: Letra: H, Letra: o, Letra: l, Letra: a
  print('\n========================\n');
}

//* forEach loop (Método de colecciones)

/** Sintaxis
coleccion.forEach((elemento) {
  // Código a ejecutar
});

  * Cuando usarla:
Con colecciones y funciones

  * Venataja:
Funconal,bueno para callbacks
 */

void foreach_() {
  print('Metodo de colecciones\n');
  List<int> numeros = [1, 2, 3, 4, 5];
  
  // Usando forEach con función anónima
  numeros.forEach((numero) {
    print('Número: $numero');
  });
  print('');

  // Forma más concisa con arrow function
  numeros.forEach((numero) => print('Número: $numero'));
  print('');

  // Con índice (usando asMap)
  numeros.asMap().forEach((indice, numero) {
    print('Índice: $indice, Valor: $numero');
  });
  // Output: Índice: 0, Valor: 1, Índice: 1, Valor: 2, etc.
  print('');

  // Con maps
  Map<String, int> edades = {
    'Juan': 25,
    'Maria': 30,
    'Carlos': 35
  };
  print('');

  edades.forEach((nombre, edad) {
    print('$nombre tiene $edad años');
  });
  // Output: Juan tiene 25 años, Maria tiene 30 años, etc.
  print('\n========================\n');
}

//* while loop (Mientras condición sea verdadera)

/** Sintaxis
while (condicion) {
  // Código a repetir
}

  * Cuando usarlo:
Cuando no sabes las iteraciones

  * Ventaja:
Flexible, condicion dinamica
 */

void while_() {
  print('Ciclo While\n');
  // Contador simple
  int contador = 1;
  
  while (contador <= 5) {
    print('Contador: $contador');
    contador++; // Importante: actualizar la condición
  }
  // Output: Contador: 1, 2, 3, 4, 5
  print('');
  
  // Validación de entrada de usuario (ejemplo simulado)
  String? entrada;
  int intentos = 0;
  
  while (entrada != 'salir' && intentos < 3) {
    print('Escribe "salir" para terminar (intento ${intentos + 1})');
    entrada = 'salir'; // Simulamos entrada del usuario
    intentos++;
  }
  
  // Procesar hasta que se cumpla condición
  int numero = 10;
  
  while (numero > 0) {
    print('Número: $numero');
    numero ~/= 2; // División entera
  } // Output: 10, 5, 2, 1
    print('\n========================\n');
}

//* do-while loop (Ejecuta al menos una vez)

/** Sintaxis
do {
  // Código a repetir
} while (condicion);
 
  * Cuando usarla:
Al menos una ejecucion

  * Ventaja:
Garantiza primera ejecucion
 */

void do_while_() {
  print('Do-while loope\n');
  // Se ejecuta al menos una vez
  int contador = 10;
  
  do {
    print('Contador: $contador');
    contador++;
  } while (contador < 5);
  // Output: Contador: 10 (aunque la condición es falsa desde el inicio)
  
  // Menú interactivo (ejemplo simulado)
  String opcion;
  bool salir = false;
  
  do {
    print('''\n--- Menú ---
    1. Opción A
    2. Opción B
    3. Salir\n''');
    
    opcion = '3'; // Simulamos que usuario elige salir
    
    switch (opcion) {
      case '1':
        print('Ejecutando opción A');
        break;
      case '2':
        print('Ejecutando opción B');
        break;
      case '3':
        salir = true;
        print('Saliendo...');
        break;
      default:
        print('Opción inválida');
    }
  } while (!salir);
  print('\n========================\n');
}

//* Control de loops: break y continue

//? break - Salir del loop inmediatamente
void break_() {
  print('Control de loop -> Break\n');
  // Buscar un número y salir cuando se encuentre
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int objetivo = 7;
  
  for (int numero in numeros) {
    print('Verificando: $numero');

    if (numero == objetivo) {
      print('\n¡Número encontrado!');
      break; // Sale del loop inmediatamente
    }
  }
  print('');

  // Buscar en matriz (break con labels)
  outerLoop: for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print('i: $i, j: $j');
      
      if (i == 2 && j == 2) {
        print('\n¡Condición cumplida!');
        break outerLoop; // Sale de ambos loops
      }
    }
  }
  print('\n========================\n');
}

//? continue - Saltar a la siguiente iteración

void continue_() {
  print('Control de loop -> continue\n');
  // Imprimir solo números impares
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      continue; // Salta los números pares
    }
    print('Número impar: $i');
  } // Output: 1, 3, 5, 7, 9
  print('');

  // Procesar solo elementos válidos
  List<String?> nombres = ['Ana', null, 'Carlos', null, 'Maria'];
  
  for (String? nombre in nombres) {
    if (nombre == null) {
      continue; // Salta los valores nulos
    }
    print('Nombre: ${nombre.toUpperCase()}');
  } // Output: Nombre: ANA, Nombre: CARLOS, Nombre: MARIA
print('\n========================\n');
}