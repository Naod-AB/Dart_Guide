void main() {
  final colors = ['grey', 'brown'];

  var addblue = true;
  var addred = false;

  if (addblue) {
    colors.add('blue');
  }

  if (addred) {
    colors.add('red');
  }
  print(colors);

//another way to implement the above code using collection if
  final colors2 = [
    'grey',
    'brown',
    if (addblue) 'blue',
    if (addred) 'red',
  ];

  print(colors2);
}
