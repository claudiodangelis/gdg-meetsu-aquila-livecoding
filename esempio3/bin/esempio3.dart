import 'package:esempio3/hug.dart';

void main() {
  Hug a = new Hug(5);
  a.future().then((String valore) {
    print(valore);
  });
}
