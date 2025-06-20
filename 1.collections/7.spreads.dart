///Spreads work with collections like List, sets and maps
void main() {
  var addblue = true;
  const addextra = true;
  final extraColors = ['yellow', 'green'];
  final colors = [
    'grey',
    'brown',
    if (addblue) 'blue',

    //instead of for loop  for (var color in extraColors) color, we can use spread
    // ...extraColors,
    if (addextra)
      ...extraColors, //we can also use the spread with collection if
    ...['Magenta', 'Cyan'],
  ];
  print(colors);

  //With Maps
  const ratings = [5.0, 3.5, 4.5];
  final restaurant = {
    'name': 'Pizza Mario',
    'cuisine': 'Italian',
    if (ratings.length > 2) ...{'rating': ratings, 'popular': true},

    //Or
    // if (ratings.length > 2) ...{
    //   'ratings': ratings,
    //   //'isPopular': true,
    // },
  };
  print(restaurant);
}
