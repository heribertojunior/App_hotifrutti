import 'package:get/get.dart';

class HomeController extends GetxController {
  var counter = 0.obs; //Variavel rx (observable,e o getx vai monitorar)

  void incrementCounter() {
    counter.value++; //usa-se value para pegar o valor de uma variavel RX
  }
}
