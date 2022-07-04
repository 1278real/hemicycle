import 'package:flutter/material.dart';
import 'colors.dart';

class IndividualVotes {
  int index;
  bool? voteResult;
  String? groupPairing;

  Color get voteColor {
    if (voteResult == null) {
      return customVoteAbstention;
    } else {
      if (voteResult == true) {
        return customVoteFor;
      } else {
        return customVoteAgainst;
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
      return customVoteAbstention;
    } else {
      if (groupChoice == true) {
        return customVoteFor;
      } else {
        return customVoteAgainst;
      }
    }
  }
}
