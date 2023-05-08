void main() {
  var addblue = true;
  var addred = false;
  final extraColors = ['grey', 'brown'];
  final colors = [
    'grey',
    'brown',
    //2.method we can do this instead of add all
    for (var color in extraColors) color,
  ];
  //1. one method
  colors.addAll(extraColors); // add list to another list
  print(colors);
}
