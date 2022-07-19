import 'dart:collection';

import 'package:flutter/material.dart';

class ElementAttributes with IterableMixin<ElementAttributes> {
  int index;
  int row;
  int position;
  Color elementColor;
  Color? parentColor;
  String? description;

  /// ### Describes the parameters for each dot of the Assembly :
  ///
  /// • [index] is the increasing index starting at 0 for the dots from left to right.
  ///
  /// • [row] is the row of the assembly from inside to outside.
  ///
  /// • [position] is the position in thee row from left to right.
  ///
  /// • [elementColor] is the dot color displayed in full opacity by default ; if [parentColor] is provided, the opacity is dimmed if matching, full if divergent.
  ///
  /// • [description] is a nullable String that is NOT YET displayed ; for future use.
  ElementAttributes(this.index, this.row, this.position, this.elementColor,
      {this.parentColor, this.description});

  @override
  Iterator<ElementAttributes> get iterator => throw UnimplementedError();
}

class SectorAttributes with IterableMixin<SectorAttributes> {
  int index;
  int size;
  Color? elementColor;
  String? description;

  /// ### Describes the parameters for each sector of the surrounding arc around the votes :
  ///
  /// • [index] is the increasing index starting at 0 for the sectors from left to right.
  ///
  /// • [size] is the size of the sector (i.e the number of members involved).
  ///
  /// • [elementColor] is the dot color displayed in full opacity by default.
  ///
  /// • [description] is a nullable String that is NOT YET displayed ; for future use.
  SectorAttributes(this.index, this.size, this.elementColor,
      {this.description});

  @override
  Iterator<SectorAttributes> get iterator => throw UnimplementedError();
}
