class PositiveInt {
  PositiveInt(this.value)
      : assert(value >= 0,
            'Value can\'t be negative'); // this limits the initiating value to 0 and above
  final int value;
}

void signIn(String email, String password) {
  assert(email.isNotEmpty);
  assert(password.isNotEmpty);
}

void main(List<String> args) {
  final positiveInt = PositiveInt(1);
  final positiveInt1 = PositiveInt(-1);
  print(positiveInt.value);
  print(positiveInt1.value);
  signIn('', '');
}

//check errors.dart documentation
// assertions are enabled in debug mode but not in release mode

//exception can be  triggered in debug and release mode
