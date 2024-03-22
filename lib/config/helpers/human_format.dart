// importar intl
import 'package:intl/intl.dart';

class HumanFormat {
  static String numberFormat(int number) {
    // Formatear el número
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0, // Cantidad de decimales
      symbol: '' // Símbolo de la moneda
    ).format(number);

    return formatterNumber;
  }
}