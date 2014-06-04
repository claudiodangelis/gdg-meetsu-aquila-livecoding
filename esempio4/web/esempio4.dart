import 'dart:html';
import 'dart:convert' show JSON;

void main() {
  ButtonElement btn = querySelector('#btn');
  ParagraphElement p = querySelector('#risultato');
  
  btn.onClick.listen((e) {
    HttpRequest.getString("data.json").then((String data) {
      Map<String, String> dataDart = {};
      dataDart = JSON.decode(data);
      p.text = dataDart["risultato"];
    });
  });
}