void main() {
  List<String> productVendor = ['UNGA', 'Aquamist', 'Daima'];

  productVendor.add('Dairyland');

  print(productVendor[1]);

  for (var supplier in productVendor) {
    print(supplier);
  }

  productVendor.remove('Daima');
  print(productVendor);

  Set<String> wildCats = {'Leopard', 'Cheetah', 'Lion'};

  wildCats.add('Lynx');
  wildCats.add('Leopard');

  print(wildCats.contains('Lion'));

  for (var cat in wildCats) {
    print(cat);
  }

  wildCats.remove('Cheetah');
  print(wildCats);

  Map<int, String> userNationalId = {
    001: 'Eddy',
    002: 'Salmai',
    003: 'Mungu',
  };

  userNationalId[004] = 'Solomon';

  print(userNationalId[102]);

  userNationalId.forEach((key, value) {
    print('ID: $key, Name: $value');
  });

  userNationalId.remove(003);
  print(userNationalId);
}
