void main() {
  var sanya = Human(name: "Sacha", age: 23, height: 190);

  print(sanya.name);

  var vova = Human(name: "Vova", age: 23, height: 190);
  print(vova.name);
  print(Human.count);

  final Animal wolf = Wolf(5);
  final tiger = Tiger(1);
  print(tiger.age);
  print(wolf.age);
}

class Human {
  Human({required this.name, required this.age, required this.height}) {
    count += 1;
  }

  static int count = 0;

  final String name;
  int age;
  double height;
}

abstract interface class Animal {
  double get age;
  void makeSound();
}

class Wolf implements Animal {
  Wolf(this.age);
  @override
  void makeSound() {
    print('Auuuuuuuu');
  }

  @override
  final double age;
}

class Tiger implements Animal {
  Tiger(this.age);
  @override
  void makeSound() {
    print('Rrrrrrr');
  }

  @override
  final double age;
}
