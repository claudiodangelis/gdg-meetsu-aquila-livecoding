// Importa la libreria hug.dart contenuta in questo package
import 'package:esempio3/hug.dart';

void main() {
  // Crea una nuova istanza di Hug
  Hug a = new Hug(5);
  // Invoca future(), un oggetto Future
  a.future().then((String valore) {
    // Stampa il valore ricevuto dal Future
    print(valore);
  });
}
