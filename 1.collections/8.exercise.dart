///!  Exercise: Shopping List
// void main() {

// Given the following program:

// ```dart*/

//   const bananas = 5;
//   const apples = 6;
//   const grains = {
//     'pasta': '500g',
//     'rice': '1kg',
//   };
//   const addGrains = true;
//   var shoppingList = {
//     if (bananas > 0) ...{'bananas': bananas},
//     if (apples > 0) ...{'apples': apples},
//     if (addGrains) ...grains,
//   };

//   print(shoppingList);
// prints {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}

// Rewrite this code so that the `shoppingList` variable is initialized using **collection-if**, **collection-for** or **spreads**, and the program output is the same.
// if (bananas > 0) {
//   shoppingList['bananas'] = bananas;
// }
// if (apples > 0) {
//   shoppingList['apples'] = apples;
// }
// if (addGrains) {
//   shoppingList.addAll(grains);
// }
// }

//! set exercies
// void main() {
//   var fruitCounts = {'apple': 5, 'banana': 3, 'orange': 2};
//   fruitCounts['grape'] = 4;
//   fruitCounts['apple'] = 6;
//   fruitCounts.remove('orange');

//   print(fruitCounts);
//   fruitCounts.forEach((k, v) => print('$k , count:$v'));

//   fruitCounts.putIfAbsent('kiwi', () => 1);
//   fruitCounts.update('banana', (count) => count + 2);
// }

//! map exercises
// void main() {
//   var fruitCounts = {'apple': 5, 'banana': 3, 'orange': 2};
//   fruitCounts['grape'] = 4;
//   fruitCounts['apple'] = 6;
//   fruitCounts.remove('orange');

//   print(fruitCounts);
//   fruitCounts.forEach((k, v) => print('$k , count:$v'));

//   fruitCounts.putIfAbsent('kiwi', () => 1);
//   fruitCounts.update('banana', (count) => count + 2);

//   print(fruitCounts.containsKey('mango')); // false

//   print(fruitCounts.keys); // (apple, banana, orange)
//   print(fruitCounts.values); // (5, 3, 2)
// }

///! Tasks:

// Find and print the name of the student with the highest Science score.

// void main() {
//   List<Map<String, dynamic>> students = [
//     {
//       'name': 'Alice',
//       'scores': {'Math': 90.5, 'English': 85, 'Science': 92},
//     },
//     {
//       'name': 'Bob',
//       'scores': {'Math': 78, 'English': 80, 'Science': 88},
//     },
//     {
//       'name': 'Charlie',
//       'scores': {'Math': 95, 'English': 70, 'Science': 85},
//     },
//   ];

//   //* Print each student's name with their average score.
//   for (var student in students) {
//     final scores = student['scores'] as Map<String, num>;
//     final values = List<num>.from(scores.values);
//     final avg = values.reduce((a, b) => a + b) / scores.length;
//     print('Name: ${student['name']}, Avg score: ${avg.toStringAsFixed(1)} ');
//   }

//   // Print the name of the student with the highest score.
//   final studentScores = {
//     for (var s in students)
//       s['name'] as String: (s['scores'] as Map<String, num>).values.reduce(
//         (a, b) => a + b,
//       ),
//     //* to find the higest scorein science
//     // s['name'] as String: (s['scores'] as Map<String, num>)['Science']?? 0.0
//   };

//   final best = studentScores.entries.reduce(
//     (a, b) => a.value > b.value ? a : b,
//   );

//   print('The best student is ${best.key}, with total score of ${best.value}');

//   //* Create a new list of names of students who scored above 80 in Math.
//   final names = students
//       .where((s) => ((s['scores'] as Map<String, num>)['Math'] ?? 0) > 80)
//       .map((e) => e['name']);
//   print(names);
// }

// void main() {
//   List<Map<String, dynamic>> products = [
//     {'name': 'Laptop', 'category': 'Electronics', 'price': 1200},
//     {'name': 'T-Shirt', 'category': 'Clothing', 'price': 25},
//     {'name': 'Phone', 'category': 'Electronics', 'price': 800},
//     {'name': 'Jeans', 'category': 'Clothing', 'price': 40},
//     {'name': 'Blender', 'category': 'Home', 'price': 60},
//   ];

//   //*Group products by category into a Map<String, List<String>>.void main() {
//   final Map<String, List<String>> categories = {};

//   for (var p in products) {
//     final category = p['category'] as String;
//     final name = p['name'] as String;
//     categories.putIfAbsent(category, () => []).add(name);
//   }
//   print(categories);

//   //* Find the category with the highest total price of products.
//   final totals = <String, num>{};
//   for (var p in products) {
//     totals[p['category']] = (totals[p['category']] ?? 0) + p['price'];
//   }
//   final best = totals.entries.reduce((a, b) => a.value > b.value ? a : b);
//   print('Top category: ${best.key}, total: ${best.value}');
//   print(totals);
// }

void main() {
  Map<String, Map<String, double>> company = {
    'Engineering': {'Alice': 85000, 'Bob': 78000},
    'Marketing': {'Charlie': 60000, 'Diana': 65000},
    'HR': {'Eve': 55000},
  };

  //   Tasks:
  // Print each department name with the total salary expense.
  company.forEach((department, employees) {
    final totalSalary = employees.values.reduce((a, b) => a + b);

    print('$department total salary: \$${totalSalary.toStringAsFixed(2)}');
  });

  // Find the employee with the highest salary across all departments.

  final Map<String, double> highestPaid = {};

  String topEmployee = '';
  double topSalary = 0;

  company.forEach((_, employees) {
    employees.forEach((name, salary) {
      if (salary > topSalary) {
        topSalary = salary;
        topEmployee = name;
      }
    });
  });

  highestPaid[topEmployee] = topSalary;

  print(highestPaid);

  //*or
  final allEntries = company.entries.expand(
    (dept) => dept.value.entries,
  ); // Flatten all employee entries

  final topEntry = allEntries.reduce((a, b) => a.value > b.value ? a : b);

  final highPaid = {topEntry.key: topEntry.value};

  print(highPaid);

  // Give a 10% raise to all employees in the Marketing department.
  company.forEach((d, e) {
    if (d == 'Marketing') {
      e.updateAll((name, salary) => salary * 1.1);
    }
  });

  // Add a new employee 'Frank' with salary 70000 to the HR department.
  company['HR']?['Frank'] = 70000; //*or
  company.putIfAbsent('HR', () => {})['Frank'] = 70000;
  
}
