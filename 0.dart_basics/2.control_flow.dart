///! For loop and if-else statements
// void main() {
//   for (var i = 0; i <= 15; i++) {
//     if (i % 3 == 0 && i % 5 == 0) {
//       print('fizz buzz');
//     } else if (i % 3 == 0) {
//       print('fizz');
//     } else if (i % 5 == 0) {
//       print('buzz');
//     } else {
//       print(i);
//     }
//   }
// }

///!while loop
// void main() {
//   var i = 1;
//   while (i <= 5) {
//     print('*' * i);
//     i++;
//   }
// }

///!Switch loop
enum Status { loading, success, error }

void main() {
  Status status = Status.loading;

  switch (status) {
    case Status.loading:
      print('Loading...');
      break;
    case Status.success:
      print('Success!');
      break;
    case Status.error:
      print('An error occurred.');
      break;
  }
}
