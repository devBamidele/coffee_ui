import 'package:intl/intl.dart';

String formatCurrency(num amount, {int decimalCount = 0}) {
  final formatCurrency = NumberFormat.simpleCurrency(
    decimalDigits: decimalCount,
    name: 'NGN',
  );
  return formatCurrency.format(amount);
}
