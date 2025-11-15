/**
 * Tambien conocidos como estructuras de control de flujo.
 * Son instrucciones que permiten que tu programa tome decisiones 
   y ejecute diferentes bloques de código según condiciones específicas.

 * Sintaxis basica
if (condicion) {
  // Código si la condición es true
} else {
  // Código si la condición es false
}
 */

void main() {
        simple_branch();
        branch_OperLogicos();
        condicional_switchcase();
        switch_enums();
        operador_ternario();
        operador_NullCoalescing();
        operador_asignacion();
        assert_();
        autentificacion();
        calculadora();
        sis_grados();
}

void simple_branch() {
  print('Branches simples\n');
  int edad = 20;
  
  // if simple
  if (edad >= 18) {
    print('Eres mayor de edad');
  }
  
  // if-else
  if (edad >= 18) {
    print('Puedes votar');
  } else {
    print('No puedes votar aún');
  }
  
  // if-else if-else (múltiples condiciones)
  int puntaje = 85;
  
  if (puntaje >= 90) {
    print('Calificación: A');
  } else if (puntaje >= 80) {
    print('Calificación: B'); // Este se ejecuta
  } else if (puntaje >= 70) {
    print('Calificación: C');
  } else {
    print('Calificación: D');
  }
print('\n========================\n');
}

void branch_OperLogicos() {
  print('Branches con operadores logicos\n');
  int edad = 25;
  bool tieneLicencia = true;
  
  // AND (&&)
  if (edad >= 18 && tieneLicencia) {
    print('Puedes conducir el carro');
  }
  
  // OR (||)
  bool esFinDeSemana = true;
  bool esFeriado = false;
  
  if (esFinDeSemana || esFeriado) {
    print('¡No hay trabajo!');
  }
  
  // NOT (!)
  bool estaLloviendo = false;
  
  if (!estaLloviendo) {
    print('Podemos ir al parque');
  }
print('\n========================\n');
}

/** Sintaxis de Condicional switch-case (para multiples valores)
switch (variable) {
  case valor1:
    // Código para valor1
    break;
  case valor2:
    // Código para valor2
    break;
  default:
    // Código si no coincide ningún caso
}
 */

void condicional_switchcase() {
  print('Condicionales Switch-case');

  String dia = 'Lunes';
  
  switch (dia) {
    case 'Lunes':
      print('Inicio de semana');
      break;
    case 'Viernes':
      print('¡Por fin es viernes!');
      break;
    case 'Sábado':
    case 'Domingo':
      print('¡Fin de semana!'); // Casos múltiples
      break;
    default:
      print('Día de semana normal');
  }
  
  // Con números
  int mes = 2;
  
  switch (mes) {
    case 1:
      print('Enero');
      break;
    case 2:
      print('Febrero'); // Este se ejecuta
      break;
    case 3:
      print('Marzo');
      break;
    default:
      print('Otro mes');
  }
print('\n========================\n');
}

enum EstadoPedido { pendiente, enviado, entregado, cancelado }

void switch_enums() {
  print('Switch con enums\n');
  EstadoPedido estado = EstadoPedido.enviado;
  
  switch (estado) {
    case EstadoPedido.pendiente:
      print('Tu pedido está siendo procesado');
      break;
    case EstadoPedido.enviado:
      print('Tu pedido está en camino'); // Este se ejecuta
      break;
    case EstadoPedido.entregado:
      print('Pedido entregado');
      break;
    case EstadoPedido.cancelado:
      print('Pedido cancelado');
      break;
  }
print('\n========================\n');
}

/** Operador ternario ? : (If-else en una línea)
 * condicion ? valorSiTrue : valorSiFalse;
 */

void operador_ternario() {
  print('Operador Ternario\n');
  int edad = 20;
  
  // Forma larga
  String mensaje;
  if (edad >= 18) {
    mensaje = 'Mayor de edad';
  } else {
    mensaje = 'Menor de edad';
  }
  
  // Forma ternaria (equivalente)
  String mensajeTernario = edad >= 18 ? 'Mayor de edad' : 'Menor de edad';
  
  print(mensaje);          // Mayor de edad
  print(mensajeTernario);  // Mayor de edad
  
  // Ejemplos prácticos
  int puntaje = 75;
  String resultado = puntaje >= 60 ? 'Aprobado' : 'Reprobado';
  print(resultado); // Aprobado
  
  // Ternarios anidados
  int numero = 0;
  String signo = numero > 0 ? 'Positivo' : numero < 0 ? 'Negativo' : 'Cero';
  print(signo); // Cero
print('\n========================\n');
}

//* Operador ?? (Null-coalescing) (Para valores nulos)

void operador_NullCoalescing() {
  print('Operador Null Coalescing\n');
  String? nombre = null;
  String? apellido = 'Pérez';
  
  // Si nombre es null, usa 'Invitado'
  String nombreDisplay = nombre ?? 'Invitado';
  String apellidoDisplay = apellido ?? 'Desconocido';
  
  print(nombreDisplay);   // Invitado
  print(apellidoDisplay); // Pérez
  
  // Combinado con ternario
  int? edad;
  String categoria = (edad ?? 0) >= 18 ? 'Adulto' : 'Menor';
  print(categoria); // Menor (porque edad es null, usa 0)
  print('\n========================\n');
}

//* Operador ??= (Asignación si es nulo)

void operador_asignacion() {
  print('Operador Asignacion-Nulo\n');
  int? contador;
  String? mensaje;
  
  contador ??= 0;  // Solo asigna si contador es null
  mensaje ??= 'Valor por defecto';
  
  print(contador); // 0
  print(mensaje);  // Valor por defecto
  
  // No se reasigna porque ya tiene valor
  contador ??= 100;
  mensaje ??= 'Otro valor';
  
  print(contador); // 0 (no cambió)
  print(mensaje);  // Valor por defecto (no cambió)
  print('\n========================\n');
}

//* assert() (Para debugging)

/**
 * Debugging es el proceso de identificar, 
 * analizar y eliminar errores (bugs) en el código de programación. 

 * Es como ser un "detective de código" que busca pistas para resolver 
 * misterios de por qué el programa no funciona como esperabas.
 */

void assert_() {
  print('Assert\n');
  int edad = 15;
  
  // Solo en modo debug, en producción se ignora
  assert(edad >= 18, 'La edad debe ser mayor o igual a 18');
  
  print('Continúa el programa...');
  
  // Con expresiones más complejas
  String? nombre = 'Juan';
  assert(nombre.isNotEmpty, 'El nombre no puede estar vacío');
  print('\n========================\n');
}

//* Ejemplos practicos con branches

//* Sistema de autentificacion
void autentificacion() {
  print('Sistema de autentificacion\n');
  String usuario = 'admin';
  String password = '1234';
  bool tienePermiso = true;
  
  if (usuario == 'admin' && password == '1234') {
    print('Login exitoso');
    
    if (tienePermiso) {
      print('Acceso total al sistema');
    } else {
      print('Acceso limitado');
    }
  } else {
    print('Credenciales incorrectas');
  }
  print('\n========================\n');
}

//* Calculadora sencilla

void calculadora() {
  print('Calculadora\n');
  String operacion = '+';
  double a = 10;
  double b = 5;
  double resultado;
  
  switch (operacion) {
    case '+':
      resultado = a + b;
      break;
    case '-':
      resultado = a - b;
      break;
    case '*':
      resultado = a * b;
      break;
    case '/':
      resultado = b != 0 ? a / b : double.infinity;
      break;
    default:
      resultado = 0;
      print('Operación no válida');
  }
  
  print('Resultado: $resultado'); // 15.0
  print('\n========================\n');
}

//* Sistema de grados

void sis_grados() {
  print('Sistema de grados\n');
  double promedio = 87.5;
  String grado;
  
  if (promedio >= 90) {
    grado = 'A';
  } else if (promedio >= 80) {
    grado = 'B'; // Este se ejecuta
  } else if (promedio >= 70) {
    grado = 'C';
  } else if (promedio >= 60) {
    grado = 'D';
  } else {
    grado = 'F';
  }
  
  // Usando ternario para mensaje adicional
  String mensaje = promedio >= 70 ? 'Aprobado' : 'Necesita mejorar';
  
  print('Grado: $grado');    // B
  print('Estado: $mensaje'); // Aprobado
  print('\n========================\n');
}