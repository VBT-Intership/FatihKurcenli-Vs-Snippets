import '../model/http_service_model.dart';

abstract class IHttpService<T> {
  Future<List<HttpServiceModel>> getHttpList();
}
