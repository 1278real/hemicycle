import 'package:flutter/material.dart';

import 'helpers.dart';

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

Map<int, Color> color = {
  50: Color.fromRGBO(0, 0, 0, .1),
  100: Color.fromRGBO(0, 0, 0, .2),
  200: Color.fromRGBO(0, 0, 0, .3),
  300: Color.fromRGBO(0, 0, 0, .4),
  400: Color.fromRGBO(0, 0, 0, .5),
  500: Color.fromRGBO(0, 0, 0, .6),
  600: Color.fromRGBO(0, 0, 0, .7),
  700: Color.fromRGBO(0, 0, 0, .8),
  800: Color.fromRGBO(0, 0, 0, .9),
  900: Color.fromRGBO(0, 0, 0, 1),
};
MaterialColor customVert1278 = MaterialColor(0xFF0D667F, color);
MaterialColor customBleu1278 = MaterialColor(0xFF4A7EA0, color);
MaterialColor customAccentBleu1278 = MaterialColor(0xFF1CC9FE, color);
MaterialColor customAccentVert1278 = MaterialColor(0xFF91FBFE, color);
MaterialColor customDarkGrey1278 = MaterialColor(0xFF6D6E71, color);
MaterialColor customMiddleGrey1278 = MaterialColor(0xFF7D8893, color);
MaterialColor customLightGrey1278 = MaterialColor(0xFFD1D2D4, color);

MaterialColor customVertNupes = MaterialColor(0xFF5AB47C, color);
MaterialColor customJauneNupes = MaterialColor(0xFFF9EF4F, color);
MaterialColor customRougeNupes = MaterialColor(0xFFDC574F, color);
MaterialColor customRoseNupes = MaterialColor(0xFFD45699, color);
MaterialColor customVioletNupes = MaterialColor(0xFF4A2E8B, color);

MaterialColor customVertUndia = MaterialColor(0xFF10757F, color);
MaterialColor customAccentVertUndia = MaterialColor(0xFF598C96, color);
MaterialColor customAccentRougeUndia = MaterialColor(0xFFE16559, color);

MaterialColor customRouge = MaterialColor(0xFF990000, color);
MaterialColor customOrange = MaterialColor(0xFFDD7777, color);
MaterialColor customFacebook = MaterialColor(0xFF3B5998, color);
MaterialColor customTwitter = MaterialColor(0xFF00ACED, color);
MaterialColor customLinkedin = MaterialColor(0xFF0072B1, color);
MaterialColor customInstagram = MaterialColor(0xFFC13584, color);
MaterialColor customYoutube = MaterialColor(0xFFC4302B, color);
MaterialColor customGold = MaterialColor(0xFFc09c48, color);
MaterialColor customSilver = MaterialColor(0xFFd0d0d2, color);
MaterialColor customBronze = MaterialColor(0xFFbf8f58, color);
MaterialColor customGoldHigh = MaterialColor(0xFFf9f19a, color);
MaterialColor customSilverHigh = MaterialColor(0xFFebe9ea, color);
MaterialColor customBronzeHigh = MaterialColor(0xFFf6ead2, color);

LinearGradient customNupesGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      customVertNupes.withOpacity(0.8),
      customJauneNupes.withOpacity(0.8),
      customRougeNupes.withOpacity(0.8),
      customRoseNupes.withOpacity(0.8),
      customVioletNupes.withOpacity(0.8)
    ]);

LinearGradient customNupesGradientLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      customVertNupes.withOpacity(0.8),
      customJauneNupes.withOpacity(0.55),
      customRougeNupes.withOpacity(0.3),
      customRoseNupes.withOpacity(0.55),
      customVioletNupes.withOpacity(0.8)
    ]);

LinearGradient customNupesGradientLighter = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      customVertNupes.withOpacity(0.55),
      customJauneNupes.withOpacity(0.35),
      customRougeNupes.withOpacity(0.15),
      customRoseNupes.withOpacity(0.35),
      customVioletNupes.withOpacity(0.55)
    ]);

InputDecoration textFormDecoration(
    String textToDisplay, String helperToDisplay, BuildContext context,
    {bool alter = false}) {
  double radius = 5.0;

  return InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(
            color: alter ? customVertNupes : customVioletNupes, width: 1.0),
        borderRadius: BorderRadius.circular(radius * 4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: alter ? customRoseNupes : customRougeNupes, width: 2.0),
        borderRadius: BorderRadius.circular(radius),
      ),
      labelText: textToDisplay,
      labelStyle: TextStyle(
        color: alter ? customVertNupes : customVioletNupes,
        fontSize: 20 * textSizeMagnify(context),
        fontWeight: FontWeight.bold,
      ),
      helperText: helperToDisplay,
      helperStyle: TextStyle(
        fontSize: 12 * textSizeMagnify(context),
        color: alter ? customVioletNupes : customRougeNupes,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
      ));
}
