abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound();

  void wiggleTail() {
    print("$name is wiggling tail.");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("$name says: Woof! Woof!");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("$name says: Meow!");
  }
}

class Bird extends Animal {
  Bird(String name) : super(name);

  @override
  void makeSound() {
    print("$name says: Tweet! Tweet!");
  }
}

class Lion extends Animal {
  Lion(String name) : super(name);

  @override
  void makeSound() {
    print("$name roars: ROAR!");
  }
}

void main() {
  List<Animal> zoo = [
    Dog("Buddy"),
    Cat("Whiskers"),
    Bird("Tweety"),
    Lion("Simba")
  ];

  for (var animal in zoo) {
    animal.makeSound();
    animal.wiggleTail();
    print("");
  }
}
