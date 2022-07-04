import 'dart:math';

///// STRING EXTENSION

extension CapExtension on String {
  /// CAPS for first character
  String get firstInCaps => '${this[0].toUpperCase()}${this.substring(1)}';

  /// All characters in CAPS
  String get allInCaps => this.toUpperCase();

  /// All characters in lower case
  String get noneInCaps => this.toLowerCase();

  /// CAPS for first character ONLY
  String get onlyFirstInCaps => this.noneInCaps.firstInCaps;

  String removeAccents() {
    String _toReturn = this;

    var withDia =
        'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
    var withoutDia =
        'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

    for (int i = 0; i < withDia.length; i++) {
      _toReturn = _toReturn.replaceAll(withDia[i], withoutDia[i]);
    }

    return _toReturn;
  }
}

///// MATHS FUNCTION

/// Round a double input [aArrondir] to [nbDecimales] decimals (if not provided, 2 decimals)
double roundToNDecimals(double aArrondir, {int nbDecimales = 2}) {
  var tempValue = (aArrondir * pow(10, nbDecimales.toDouble())).round();
  return tempValue / pow(10, nbDecimales.toDouble());
}

/// Provide a plus or a minus sign, and round a double input [aArrondir] to [nbDecimales] decimals (if not provided, 2 decimals)
String signedRoundToNDecimals(double aArrondir, {int nbDecimales = 2}) {
  var tempValue = (aArrondir * pow(10, nbDecimales.toDouble())).round();
  double toSign = tempValue / pow(10, nbDecimales.toDouble());
  return (toSign > 0 ? "+" + toSign.toString() : toSign.toString());
}
