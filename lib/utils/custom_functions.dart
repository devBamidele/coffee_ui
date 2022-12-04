import 'package:intl/intl.dart';

String formatCurrency(num amount) {
  return NumberFormat("###.00", "en_US").format(amount);
}
