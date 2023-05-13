class Email {
  Email(this.email) {
    if (email.isEmpty) {
      throw FormatException('$email can\'t be empty');
    }
    if (!email.contains('@')) {
      throw FormatException('$email doesn\'t contain @ symbol');
    }
  }
  final String email;

  @override
  String toString() => email;
}

void main() {
  try {
    print(Email('example@gmail.com'));
    print(Email('example.com'));
    print(Email(''));
  } on FormatException catch (e) {
    print(e);
  }
}
