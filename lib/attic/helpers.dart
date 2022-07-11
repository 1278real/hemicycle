import 'dart:math' as math;

extension CapExtension on String {
  /// ### CAPS for first character
  String get firstInCaps => '${this[0].toUpperCase()}${this.substring(1)}';

  /// ### All characters in CAPS
  String get allInCaps => this.toUpperCase();

  /// ### All characters in lower case
  String get noneInCaps => this.toLowerCase();

  /// ### CAPS for first character ONLY
  String get onlyFirstInCaps => this.noneInCaps.firstInCaps;

  /// ### Help removing all accents for String comparison
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

  /// Force zeros at the beginning of given String, for hour:minute or day/month/year display when using integers...
  String get forceInitialZeros {
    String _toReturn = "00" + this;
    return _toReturn.substring(_toReturn.length - 2, _toReturn.length);
  }
}

extension RadiansDegreesConvert on double {
  double get radiansToDegrees => this * 360 / 2 / math.pi;

  double get degreesToRadians => this / 360 * 2 * math.pi;
}

/// Round a double input [aArrondir] to [nbDecimales] decimals (if not provided, 2 decimals)
double roundToNDecimals(double aArrondir, {int nbDecimales = 2}) {
  var tempValue = (aArrondir * math.pow(10, nbDecimales.toDouble())).round();
  return tempValue / math.pow(10, nbDecimales.toDouble());
}

/// Provide a plus or a minus sign, and round a double input [aArrondir] to [nbDecimales] decimals (if not provided, 2 decimals)
String signedRoundToNDecimals(double aArrondir, {int nbDecimales = 2}) {
  var tempValue = (aArrondir * math.pow(10, nbDecimales.toDouble())).round();
  double toSign = tempValue / math.pow(10, nbDecimales.toDouble());
  return (toSign > 0 ? "+" + toSign.toString() : toSign.toString());
}
