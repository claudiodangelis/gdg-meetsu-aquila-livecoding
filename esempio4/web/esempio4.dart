import 'dart:html';
import 'dart:convert' show JSON;

void main() {
  ButtonElement btn = querySelector('#btn');
  ParagraphElement p = querySelector('#risultato');
  
  btn.onClick.listen((e) {
    // Invoca il metodo HttpRequest.getString() ed effettua una chiamata AJAX al
    // file data.json
    HttpRequest.getString("data.json").then((String data) {
      Map<String, String> dataDart = {};
      // Decodifica il file JSON serializzato e lo converte in Map
      dataDart = JSON.decode(data);
      p.text = dataDart["risultato"];
    });
  });
}
