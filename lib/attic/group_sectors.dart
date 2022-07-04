import 'dart:collection';

import 'package:flutter/material.dart';

class GroupSectors with IterableMixin<GroupSectors> {
  int nbElements;
  Color sectorColor;
  String? description;

  GroupSectors(this.nbElements, this.sectorColor, {this.description});

  @override
  // TODO: implement iterator
  Iterator<GroupSectors> get iterator => throw UnimplementedError();
}
