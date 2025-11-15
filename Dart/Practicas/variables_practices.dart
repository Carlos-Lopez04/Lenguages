void main(){
  pruenba1();
  print('\n================\n');
  prueba2();
  print('\n================\n');
  varIterables();
  print('\n================\n');
}

void pruenba1() {
  
  final pokemon = {
    'dex_number': 132,
    'name':'Ditto',
    'hp':100,
    'isAlive': true,
    'abilities': ['Limber', 'Impostor'],
    'sprites':{
        1:'ditto/front.png',
        2:'ditto/back.png'
    }
  };

  print(pokemon);
  print('\nname -> ${pokemon['name']}');
//   print('''\nSprites
//   1 -> ${pokemon['sprites'][1]}
//   2 -> ${pokemon['sprites'][2]}
// ''');
  print(pokemon.runtimeType);
}

class Pokemon{
    final int dex_number;
    final String name;
    final int hp;
    final bool isAlive;
    final List<String> abilities;
    final Map<int,String> sprites;


  Pokemon({
    required this.dex_number,
    required this.name,
    required this.hp,
    required this.isAlive,
    required this.abilities,
    required this.sprites,
  });
}

void prueba2(){
  final pokemon = Pokemon(
    dex_number: 132,
    name: 'Ditto',
    hp: 100,
    isAlive: true,
    abilities: ['Limber', 'Impostor'],
    sprites: {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
  });

  print('\nname -> ${pokemon.name}');
  print('''\nSprites
  front -> ${pokemon.sprites[1]}
  back -> ${pokemon.sprites[2]}
  ''');
  print('Tipo de dato -> ${pokemon.runtimeType}');
}

void varIterables(){
  final numbers = [1,2,3,4,5,5,6,7,7,7];

  print('Original list -> $numbers');
  print('Lenght -> ${numbers.length}');
  print('Index 3 -> ${numbers[3]}');
  print('First -> ${numbers.first}');
  print('Last -> ${numbers.last}');
  print('Reversed -> ${numbers.reversed}');
  print('\n================\n');

  final reversedNum = numbers.reversed;
  print('Iterable -> $reversedNum');
  print('List -> ${reversedNum.toList()}');
  print('Set -> ${reversedNum.toSet()}');
  print('\n================\n');

  final greater5 = numbers.where((num){
    return num > 5;
  });
  print('>5 -> ${greater5.toSet()}');
}