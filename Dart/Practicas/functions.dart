void main(){
  print(greetings());
  print('\n===============\n');
  print('Suma -> ${sumNumbers(10, 20)}');
  print('Lamba -> ${lambaSum(5, 5)}');
  print('Parametro opcional -> ${opcParam(30)}');
  print('Parametro opcional 2 -> ${opcParam2(12)}');
  print('\n===============\n');
  print(greetingPerson(name: 'Fernando',message: 'Hi'));
}

String greetings()=>'Hola a todos';

int sumNumbers(int a , int b){
        return a + b;
}

int lambaSum(int a, int b)=> a+b;

int opcParam(int a, [int? b]){
  b= b ?? 0;
  return a+b;
}

int opcParam2(int a, [int b = 0]){
  return a+b;
}

String greetingPerson({required String name, String message='Hola'}){
  return '$message, $name';
}