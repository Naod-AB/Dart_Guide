//Maps or dictionaries
void main() {
  Map<String, dynamic> person = {
    'name': 'Samuel',
    'age': 30,
    'height': 1.80,
  };
  //reading value
  var name = person['name']; // this is type of dynamic
  print(name);

// as Operator
  var name2 = person['name']
      as String; // gives us all the methods for string not just dynamic like:
  name2.toUpperCase();

  person['age'] = 25; // modifiying
  person['isMale'] = true; //adding
  print(person);

  //Null values
  print(person['weight']);

  //iterate : you can't use for in to iterate in maps directly but you can use maps.keys

  for (var key in person.keys) {
    print(key);
    print(person[key]);
  }
  for (var value in person.values) {
    print(value);
  }

  for (var entry in person.entries) {
    // print(entry); // check how this prints
    print('${entry.key}: ${entry.value}');
  }

  //Exercise
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['margherita', 'pepperoni', 'special'];
  var total = 0.0;

  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    } else {
      print('$item is not on the menu');
    }
  }
  print('Total price is $total');
}
