var arreglo = ["Miercoles", 2, true, "Daniela"];
console.log(`\nEn este lugar guardamos: ${arreglo[3]}`);

// Destructuring
var perro = {
  nombre: "Whisky",
  raza: "Chihuahua",
  edad: 6,
};

// operadores
"2" == 2; //verdadero ya que compara contenido
"2" === 2; //Falso porque revisa el valor y tipo de dato

// operador spread
var a, b, c, d, e, f;

a = [1, 2, 3];
b = "perro";
c = [7, 8, 0];

d = a.concat(b, c);
e = [...a, b, ...c];
f = [a, b, c];

console.log("\nEjemplos para concatenar", e);

// Funciones flecha (arrow function)
function suma1() {
  return 5 + 3;
}

const suma2 = () => 5 + 3;

const suma3 = () => {
  console.log("hola");
  return 5 + 3;
};

// funciones map

var numbers = [1, 2, 3, 4, 5];
numbers.map(function (num) {
  return num * 2;
});

numbers.map((num) => num * 2);

numbers.map((num) => {
  return num * 2;
});

var arreglo1 = numbers.map((num) => num * 2);
var arreglo2 = numbers.map((num, index, origin) => num * 3);

// CORREGIDO: Usar backticks para template literals
console.log(`\nArreglo normal -> ${arreglo2}`);

//funcion filter
var numbers = [1, 2, 3, 4, 5, 6];
var arreglo_nuevo = numbers.filter((num) => num !== 2);

// CORREGIDO: Usar backticks para template literals
console.log(`\nArreglo con filter -> ${arreglo_nuevo}`);

// operador ternario

//condicion ? accion_verdadera:accion_falsa

// Para que funcione el operador ternario, necesitas definir la variable primero
let encontro = true; // Definir la variable
encontro ? console.log("\nSe encontro") : console.log("\nNo se encontro");

const respuesta = encontro ? "Se encontro" : "No se encontro";
console.log(`\nRespuesta: ${respuesta}`);
