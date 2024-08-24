extension DoubleExtension on double {
  String convertToBRL() {
    return 'R\$${toStringAsFixed(2).replaceAll('.', ',')}';
  }
}
