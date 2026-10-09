import 'dart:io';

void main() {
  bool orderAgain = true;

  while (orderAgain) {
    print('\n=== Pizza Order Calculator ===');
    print('Small  : \$5 USD');
    print('Medium : \$7 USD');
    print('Large  : \$10 USD');

    stdout.write('Enter pizza size (Small/Medium/Large): ');
    String size = stdin.readLineSync()?.trim().toLowerCase() ?? '';

    int price;

    switch (size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print('Invalid pizza size. Please try again.');
        continue;
    }

    stdout.write('Enter quantity: ');
    int? quantity = int.tryParse(stdin.readLineSync() ?? '');

    if (quantity == null || quantity <= 0) {
      print('Invalid quantity. Enter a positive whole number.');
      continue;
    }

    int total = price * quantity;
    print('Total payment: \$${total.toStringAsFixed(2)} USD');

    stdout.write('Would you like to order again? (y/n): ');
    String answer = stdin.readLineSync()?.trim().toLowerCase() ?? 'n';

    if (answer != 'y') {
      orderAgain = false;
    }
  }

  print('Thank you for using the Pizza Order Calculator!');
}
