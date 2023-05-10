// ## Exercise: Restaurant ratings with classes

// Given the following class:

class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  int get numRating => ratings.length;
  // for expensive operations use methods not getters
  double avgRating() {
    if (ratings.isEmpty) {
      return -1;
    }
    return ratings.reduce((value, element) => value + element) / ratings.length;
  }
}




// Add some new functionality to this class so that it can be used to:

// - get the total number of ratings
// - calculate the average rating (use a for loop or the reduce operator)

// Create new getter variables or methods depending on what you feel is most appropriate.

// _NOTE: Use Dartpad with Null Safety to complete this exercise._