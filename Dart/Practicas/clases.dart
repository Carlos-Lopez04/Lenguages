class Pokemon{
  //* Atributos
  final int id;
  final String name;
  final List<String> abilities;
  final List<String> types;
  int hp;
  final maxhp;
  int attack;
  int def;
  int sp_attack;
  int sp_def;
  int speed;
  bool isAlive;
  final Map <int,String> sprites;

//* constructor del objeto
  Pokemon({ 
    required this.id,
    required this.name,
    required this.abilities,
    required this.types,
    required this.hp,
    required this.maxhp,
    required this.attack,
    required this.def,
    required this.sp_attack,
    required this.sp_def,
    required this.speed,
    required this.isAlive,
    required this.sprites
  });

  void info(){
    print('''=== $name ===
  Type -> ${types.join(' / ')}
  Ability -> ${abilities[0]}
  Hidden ability -> ${abilities[1]}
  Hp -> $hp/$maxhp
  Attack -> $attack
  Defense -> $def
  Special Attack -> $sp_attack
  Special Defense -> $sp_def
  Speed -> $speed
  Is alive? -> $isAlive
  ''');
  }
}

//? Extends -> sirve para heredar los atributos y los metodos (funciones) de una clase Padre
class Pikachu extends Pokemon{
  Pikachu()
    :super(
      id:25,
      name:'Pikachu',
      hp: 274,
      maxhp:274,
      isAlive: true,
      abilities: ['Static','Lighting Rod'],
      sprites: {
        1: 'pikachu/front.png',
        2: 'pikachu/back.png'
      },
      types: ['Electric'],
      attack: 229,
      def: 196,
      sp_attack: 218,
      sp_def: 218,
      speed:306
    );
}

class Charizard extends Pokemon{
  Charizard()
    :super(
      id:6,
      name:'Charizard',
      hp: 360,
      maxhp:360,
      isAlive: true,
      abilities: ['Blaze','Solar Power'],
      sprites: {
        1: 'charizard/front.png',
        2: 'charizard/back.png'
      },
      types: ['Fire', 'Flyng'],
      attack: 293,
      def: 280,
      sp_attack: 348,
      sp_def: 295,
      speed:328
    );
}

void main() {

  final pikachu = Pikachu();
  pikachu.info();
  final charizard = Charizard();
  charizard.info();
}

//* Override -> Sobre escribe el comportamiento nativo de las funciones o metodos