void main() {
  final restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [5.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    }
  ];

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    var total = 0.0;
    ratings.map((e) => total += e).toList();
    final averageRating = total / ratings.length;
    restaurant['averageRating'] = averageRating;
    print('The average rating of ${restaurant['name']} is $averageRating ');
  }
  print(restaurants);
}
