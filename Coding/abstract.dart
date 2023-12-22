void main() {
  Rabbit r = new Rabbit();
  r.eat();
  var a = ['a', 'b', 'd', 'c']..sort();
  print(a);
  var b = [1, 3, 2, 0];
  b.sort((a, b) => a.compareTo(b));
  print(b);
}

class Animal {
  void eat() {
    print('animal');
  }
}

mixin BigAnimal {
  void eat() {
    print('big animal');
  }
}

mixin BigAnimal2 {
  void eat() {
    print('big animal');
  }
}

class Rabbit extends Animal with BigAnimal, BigAnimal2 {
  @override
  void eat() {
    print('rabbit');
  }
}
