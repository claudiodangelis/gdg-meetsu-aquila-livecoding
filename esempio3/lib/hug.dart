library hug;

import 'dart:async';


class Hug {
  int strenght;
  Hug(int strength) {
    this.strenght = strength;
  }
  
  toString() => "Strength: $strenght";
  
  Future<String> future() {
    Completer cmp = new Completer();
    cmp.complete("ciao");
    return cmp.future;
  }
}