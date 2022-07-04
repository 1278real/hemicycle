import 'dart:math';

import 'package:flutter/material.dart';

import 'widget_library.dart';

const double menuSize = 16;

///// DISPLAY SIZE MANAGEMENT

bool isTablet(MediaQueryData query) {
  var size = query.size;
  var diagonal = sqrt((size.width * size.width) + (size.height * size.height));

  /*
    print(
      'size: ${size.width}x${size.height}\n'
      'pixelRatio: ${query.devicePixelRatio}\n'
      'pixels: ${size.width * query.devicePixelRatio}x${size.height * query.devicePixelRatio}\n'
      'diagonal: $diagonal'
    );
    */

  var isTablet = diagonal > 1100.0;
  return isTablet;
}

double textSizeMagnify(BuildContext context,
    {Orientation orientation = Orientation.portrait}) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  double highestSize =
      (screenHeight > screenWidth) ? screenHeight : screenWidth;
  // print("INITIALS / $screenWidth X $screenHeight /// highestSize = $highestSize");
  double zoomFactor = 0.1;

  if (highestSize < 570) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.45;
    } else {
      zoomFactor = 0.57;
    }
  } else if (highestSize < 600) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.53;
    } else {
      zoomFactor = 0.66;
    }
  } else if (highestSize < 670) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.55;
    } else {
      zoomFactor = 0.72;
    }
  } else if (highestSize < 715) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.58;
    } else {
      zoomFactor = 0.77;
    }
  } else if (highestSize < 750) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.60;
    } else {
      zoomFactor = 0.82;
    }
  } else if (highestSize < 850) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.65;
    } else {
      zoomFactor = 0.87;
    }
  } else if (highestSize < 950) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.71;
    } else {
      zoomFactor = 1;
    }
  } else if (highestSize <= 966) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.8;
    } else {
      zoomFactor = 1;
    }
  } else if (highestSize > 966) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 1;
    } else {
      zoomFactor = 0.85;
    }
  } else if (highestSize > 1100) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.7;
    } else {
      zoomFactor = 1;
    }
  }
  return zoomFactor;
}

double basicSizeMagnify(BuildContext context,
    {Orientation orientation = Orientation.portrait}) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  double highestSize =
      (screenHeight > screenWidth) ? screenHeight : screenWidth;
  // print("INITIALS / $screenWidth X $screenHeight /// highestSize = $highestSize");
  double zoomFactor = 0.1;

  if (highestSize < 570) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.35;
    } else {
      zoomFactor = 0.55;
    }
  } else if (highestSize < 600) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.40;
    } else {
      zoomFactor = 0.60;
    }
  } else if (highestSize < 670) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.43;
    } else {
      zoomFactor = 0.66;
    }
  } else if (highestSize < 715) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.46;
    } else {
      zoomFactor = 0.77;
    }
  } else if (highestSize < 750) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.52;
    } else {
      zoomFactor = 0.88;
    }
  } else if (highestSize < 850) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.6;
    } else {
      zoomFactor = 0.88;
    }
  } else if (highestSize <= 950) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 0.66;
    } else {
      zoomFactor = 1;
    }
  } else if (highestSize > 950) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 1.5;
    } else {
      zoomFactor = 2;
    }
  } else if (highestSize > 1100) {
    if (orientation == Orientation.landscape) {
      zoomFactor = 2;
    } else {
      zoomFactor = 3;
    }
  }

  return zoomFactor;
}

double enhancedSizeMagnify(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  double highestSize =
      (screenHeight > screenWidth) ? screenHeight : screenWidth;
  // print("INITIALS / $screenWidth X $screenHeight /// highestSize = $highestSize");
  double zoomFactor = 1;
  if (highestSize < 570) {
    zoomFactor = 0.025;
  } else if (highestSize < 600) {
    zoomFactor = 0.03;
  } else if (highestSize < 670) {
    zoomFactor = 0.05;
  } else if (highestSize < 750) {
    zoomFactor = 0.1;
  } else if (highestSize > 950) {
    zoomFactor = 1.5;
  } else if (highestSize > 1100) {
    zoomFactor = 3;
  }
  return zoomFactor;
}

///// STRING EXTENSION

extension CapExtension on String {
  String get firstInCaps => '${this[0].toUpperCase()}${this.substring(1)}';
  String get allInCaps => this.toUpperCase();
  String get noneInCaps => this.toLowerCase();
  String get onlyFirstInCaps => this.noneInCaps.firstInCaps;
  String get forceInitialZeros {
    String _toReturn = "00" + this;
    return _toReturn.substring(_toReturn.length - 2, _toReturn.length);
  }

  String get forceInitialZerosTriple {
    String _toReturn = "000" + this;
    return _toReturn.substring(_toReturn.length - 3, _toReturn.length);
  }

  String get forcePostdecimalZeros {
    if (this.contains(".")) {
      String beforePoint = this.split(".")[0];
      String afterPoint = this.split(".")[1] + "00";
      afterPoint = afterPoint.substring(0, 2);
      return beforePoint + "." + afterPoint;
    }
    return this;
  }

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

  String byThree({String divider = " "}) {
    if (this != "null") {
      int theLength = this.length;
      if (theLength > 6) {
        // print("byThree length > 6");
        return this.substring(0, length - 6) +
            divider +
            this.substring(length - 6, length - 3) +
            divider +
            this.substring(length - 3, length);
      } else if (theLength > 3) {
        // print("byThree length > 3");
        return this.substring(0, length - 3) +
            divider +
            this.substring(length - 3, length);
      }
      // print("byThree length < 3");
      return this;
    } else {
      // print("byThree isNull");
      return this;
    }
  }

  String toK() {
    if (this != "null") {
      int theLength = this.length;
      if (theLength > 6) {
        return this.substring(0, length - 6) + "M";
      } else if (theLength > 3) {
        return this.substring(0, length - 3) + "K";
      }
      return this;
    } else {
      return this;
    }
  }

  String get toEuros {
    if (this != "null") {
      List<String> explode = this.split(".");
      if (explode.length > 1) {
        String _toReturn = explode[1] + "00";
        return explode[0].byThree(divider: ".") +
            "," +
            _toReturn.substring(0, 2) +
            " €";
      } else {
        return explode[0].byThree(divider: ".") + ",00 €";
      }
    } else {
      return "";
    }
  }

  String get toKEuros {
    if (this != "null") {
      List<String> explode = this.split(".");
      if (explode.length > 1) {
        String _toReturn = explode[1] + "00";
        return explode[0].toK() + "€";
      } else {
        return explode[0].toK() + "€";
      }
    } else {
      return "";
    }
  }

  String get toHours {
    if (this != "null") {
      return this.byThree(divider: ".") + " h";
    } else {
      return "";
    }
  }

  String get toJours {
    if (this != "null") {
      return this.byThree(divider: ".") + " j";
    } else {
      return "";
    }
  }

  String get toCachets {
    if (this != "null") {
      if (int.tryParse(this)! > 0) {
        return this.byThree(divider: ".") +
            " c (" +
            (int.tryParse(this)! * 12).toString() +
            " h)";
      } else {
        return this.byThree(divider: ".") + " c";
      }
    } else {
      return "";
    }
  }

  String get toCachetsShort {
    if (this != "null") {
      return this.byThree(divider: ".") + " c";
    } else {
      return "";
    }
  }

  String get toPercent {
    if (this != "null") {
      return this.forcePostdecimalZeros + " %";
    } else {
      return "";
    }
  }

  String get toBool {
    String _toReturn = this.toString();
    if (_toReturn != "null") {
      if (_toReturn == "true") {
        return "OUI";
      } else {
        return "NON";
      }
    } else {
      return "";
    }
  }

  bool get hasLineBreak {
    if ('\n'.allMatches(this).length > 0) {
      return true;
    } else {
      return false;
    }
  }
}

///// MATHS FUNCTION

double tauxToFraction(double tauxEnPourcents) {
  return tauxEnPourcents / 100;
}

double roundToNDecimals(double aArrondir, {int nbDecimales = 2}) {
  var tempValue = (aArrondir * pow(10, nbDecimales.toDouble())).round();
  return tempValue / pow(10, nbDecimales.toDouble());
}

String signedRoundToNDecimals(double aArrondir, {int nbDecimales = 2}) {
  var tempValue = (aArrondir * pow(10, nbDecimales.toDouble())).round();
  double toSign = tempValue / pow(10, nbDecimales.toDouble());
  return (toSign > 0 ? "+" + toSign.toString() : toSign.toString());
}
