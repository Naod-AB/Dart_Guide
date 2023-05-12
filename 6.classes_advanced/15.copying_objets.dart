class Credentials {
  const Credentials({this.email = '', this.password = ''});
  final String email;
  final String password;

  Credentials copyWith({
    // updating immutable data
    String? email,
    String? password,
  }) {
    return Credentials(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  String toString() => 'Credentials($email, $password)';
}

void main() {
  const credential = Credentials();
  // this will not work since the class varibales are final
  // credential.email = 'example@com';
  final name = credential.copyWith(email: 'example.com');
  print(name);
  final password = name.copyWith(
      password:
          '123456'); // the second update must  use the last update as reference
  print(password);
}
