class Strings {
  static const welcome = 'Welcome';
  // this belong to the class it self not to any instance
  static const signIn = 'Sign in';

  static String greet(String name) => 'Hi, $name';
}

void main() {
  //  we can just call the static variables without creating an instance
  print(Strings.welcome);
  print(Strings.signIn);
  print(Strings.greet('Sam'));
}
