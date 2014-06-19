import 'dart:html';

// Ogni applicazione in Dart parte con l'esecuzione di main()
void main() {
  // Seleziona l'elemento del DOM con id "sample_text_id"
  querySelector("#sample_text_id")
  // Metodi a cascata: text e onClick si riferiscono entrambi a querySelector
      // Imposta il testo dell'elemento a "Click me!"
      ..text = "Click me!"
      // Chiama la funzione di callback reverseText
      ..onClick.listen(reverseText);
}

// Prende in ingresso una stringa e restituisce la stringa inversa
void reverseText(MouseEvent event) {
  // text contiene il testo dell'elemento del DOM con id sample_text_id
  var text = querySelector("#sample_text_id").text;
  // Crea un nuovo StringBuffer che servirà a costruire la stringa finale
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    // Aggiunge l'i-esimo elemento (carattere) di text allo StringBuffer
    buffer.write(text[i]);
  }
  // Imposta il testo di #sample_text_id alla stringa inversa della stringa
  // iniziale. Il metodo .toString() restituisce la stringa finale immagazzinata
  // nello StringBuffer.
  querySelector("#sample_text_id").text = buffer.toString();
}
