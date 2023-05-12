//2. declaring mixin

mixin swimming {
  // 5. we can declare this with class as well like class swimming
//6. the problem with mixin is we cant initiate it like final swim = swimming();
  void swim() => print('swimming');
}
mixin breathing {
  void breath() => print('breath');
}

class Animal with breathing, swimming {
  // 7.we can add multiple mixin in a class
  // void breath() => print('breath'); //4. we can also make this a mixin
}

class Fish extends Animal with swimming {
  //3. we use with to implement mixin
  // void swim() => print( 'swimming'); //1. when we want to add swim to fish and human but not super class animal,
  // this is where we need mixin
}

class Human extends Animal with swimming {
  // void swim() => print('swimming');
}

void main(List<String> args) {
  final fish = Fish();
  final human = Human();
  fish.swim();
  human.swim();
}
