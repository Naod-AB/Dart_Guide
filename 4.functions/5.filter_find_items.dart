void main() {
  const list = [1, 2, 3, 4];
  final even = list.where((element) => element % 2 == 0);
  print(even);

//returns a default value if an item isn't used in a collection
  final firstEven = list.firstWhere(
    (e) => e == 5,
    orElse: () => -1,
  );
  print(firstEven);
}
