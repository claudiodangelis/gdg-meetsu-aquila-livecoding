// Definisce il nome con cui la libreria sarà visibile all'interno dell'app
library hug;

// Importa la libreria built-in dart:async
import 'dart:async';

// Definisce la classe Hug
class Hug {
  // Un membro di Hug
  int strenght;
  // Il costruttore della classe
  Hug(int strength) {
    // Imposta il valore di strenght al valore ricevuto dal costruttore
    this.strenght = strength;
  }
  
  // Definisce il metodo toString()
  toString() => "Strength: $strenght";
  
  // future è un oggetto Future, non restituisce un valore immediatamente
  Future<String> future() {
    Completer cmp = new Completer();
    cmp.complete("ciao");
    return cmp.future;
  }
}