import 'dart:developer';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colors.dart';

/////////////////////////
///
///  BOITE A OUTILS
///
/////////////////////////

Widget myPlaceholder({double fixedWidth = 200, double fixedHeight = 200}) {
  return Container(
    width: fixedWidth,
    height: fixedHeight,
    color: customRouge.withOpacity(0.15),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Placeholder(
          color: customRouge.withOpacity(0.5),
          strokeWidth: 1,
        ),
        Center(
            child: Transform.rotate(
          angle: 12 * -(pi / 180),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: customRouge.withOpacity(0.35),
                ),
                color: Colors.white,
                // Make rounded corners
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "WORK IN PROGRESS",
                textScaleFactor: 1.3 * (fixedWidth / 200),
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: customRouge),
              ),
            ),
          ),
        )),
      ]),
    ),
  );
}

Widget surroundedColumn(List<Widget> widgets, {double fixedHeight = 100}) {
  return Container(
    height: fixedHeight,
    decoration: BoxDecoration(
        color: customRouge.withOpacity(0.1),
        border: Border.all(
          width: 1,
          color: customRouge,
        ),
        // Make rounded corners
        borderRadius: BorderRadius.circular(5)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: widgets),
    ),
  );
}

///   à utiliser avec la fonction :
///     for (Widget widget in theDivider()) widget,

List<Widget> theDivider() {
  double padding = 15;
  return [
    Padding(padding: EdgeInsets.all(padding)),
    Divider(
      height: 8,
      thickness: 4,
      indent: padding,
      endIndent: padding,
    ),
    Padding(padding: EdgeInsets.all(padding))
  ];
}
