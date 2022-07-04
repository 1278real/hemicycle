import 'dart:collection';

import 'package:flutter/material.dart';

class ElementAttributes with IterableMixin<ElementAttributes> {
  int index;
  int row;
  int position;
  Color elementColor;
  Color? parentColor;
  String? description;

  ElementAttributes(this.index, this.row, this.position, this.elementColor,
      {this.parentColor, this.description});

  @override
  // TODO: implement iterator
  Iterator<ElementAttributes> get iterator => throw UnimplementedError();
}
