void main(List<String> args) {
  int? x;

  int y = x ?? 0;

  x ??= 0; // another way of handling null value

  // null with collections

  // const cities = ['London', 'Paris', null];
  //or
  const cities = <String?>['London', 'Paris', null];

  for (var city in cities) {
    city ??= '';
    print(city.toUpperCase());
  }
}
