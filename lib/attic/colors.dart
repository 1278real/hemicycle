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

MaterialColor customVoteFor = MaterialColor(0xFF099509, color);
MaterialColor customVoteAgainst = MaterialColor(0xFFA00D0B, color);
MaterialColor customVoteAbstention = MaterialColor(0xFF616161, color);
MaterialColor customNoVote = MaterialColor(0xFFD2D2D2, color);
