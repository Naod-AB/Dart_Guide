void main() {
  const emails = [
    'hello@abc.com',
    'hello@example.co.uk',
    'hello@gmail.com',
    'hello@yahoo.com',
  ];

  const knownDomain = ['yahoo.com', 'gmail.com'];
  // extract unknown domain
  // .last returns right hand side of the split character
  final unknownDomains = getUknownDomains(emails, knownDomain);
  print(unknownDomains);
}

List<String> getUknownDomains(List<String> emails, List<String> knownDomains) {
  return emails
      .map((email) => email.split('@').last)
      .where((domain) => !knownDomains.contains(domain))
      .toList();
}
