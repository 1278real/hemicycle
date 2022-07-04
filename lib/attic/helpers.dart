import 'dart:math';

///// STRING EXTENSION

extension CapExtension on String {
  String get firstInCaps => '${this[0].toUpperCase()}${this.substring(1)}';
  String get allInCaps => this.toUpperCase();
  String get noneInCaps => this.toLowerCase();
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

double roundToNDecimals(double aArrondir, {int nbDecimales = 2}) {
  var tempValue = (aArrondir * pow(10, nbDecimales.toDouble())).round();
  return tempValue / pow(10, nbDecimales.toDouble());
}

String signedRoundToNDecimals(double aArrondir, {int nbDecimales = 2}) {
  var tempValue = (aArrondir * pow(10, nbDecimales.toDouble())).round();
  double toSign = tempValue / pow(10, nbDecimales.toDouble());
  return (toSign > 0 ? "+" + toSign.toString() : toSign.toString());
}
