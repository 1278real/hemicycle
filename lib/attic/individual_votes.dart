import 'package:flutter/material.dart';

class IndividualVotes {
  int index;
  bool? voteResult;
  String? groupPairing;

  Color get voteColor {
    if (voteResult == null) {
      return Color.fromARGB(255, 97, 97, 97);
    } else {
      if (voteResult == true) {
        return Color.fromARGB(255, 9, 149, 9);
      } else {
        return Color.fromARGB(255, 160, 13, 11);
      }
    }
  }

  IndividualVotes(this.index, {this.voteResult, this.groupPairing});
}

class GroupPairing {
  String groupPairing;
  int? valueFor;
  int? valueAgainst;
  int? valueAbstention;

  GroupPairing(this.groupPairing,
      {this.valueFor, this.valueAgainst, this.valueAbstention});

  bool? get groupChoice {
    if ((valueAgainst ?? 0) > (valueFor ?? 0) + (valueAbstention ?? 0)) {
      return false;
    } else if ((valueFor ?? 0) > (valueAgainst ?? 0) + (valueAbstention ?? 0)) {
      return true;
    } else {
      return null;
    }
  }

  Color get groupChoiceColor {
    if (groupChoice == null) {
      return Color.fromARGB(255, 97, 97, 97);
    } else {
      if (groupChoice == true) {
        return Color.fromARGB(255, 9, 149, 9);
      } else {
        return Color.fromARGB(255, 160, 13, 11);
      }
    }
  }
}
