import 'package:get/get_connect/connect.dart';
import 'package:get/get_connect/http/src/request/request.dart';

class Api extends GetConnect {
  @override
  void onInit() {
    //definindo a URL da api
    httpClient.baseUrl = 'http://127.0.0.1:3333/';
    httpClient.addRequestModifier((Request request) {
      //definindo tipos de retornos aceitaveis
      request.headers['Accept'] = 'application/json';
      request.headers['Content-Type'] = 'application/json';
      return request;
    });
    super.onInit();
  }

  //Detecta se houve erro na resposta
  Response _errorHandler(Response response) {
    print(response.bodyString);
    switch (response.statusCode) {
      case 200:
      case 202:
      case 204:
        return response;
        break;
      default:
        throw 'Ocorreu um erro';
    }
  }
}
