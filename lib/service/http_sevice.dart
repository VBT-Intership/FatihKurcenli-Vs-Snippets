import '../model/http_service_model.dart';
import 'IHttp_service.dart';

class HttpServiceGet extends IHttpService {
  final baseUrl = "Write the url";

  @override
  Future<List<HttpServiceModel>> getHttpList() async {
    return await getHttpFunction<HttpServiceGet>($baseUrl / getTheJson.json);
  }
}


_basicBodyParseFunction(String body){
  final json = jsonDecode(body);
  if( jsonBody is List){
    return jsonbody.map((e)=>body.fromJson(e)).cast<body>.toList();
  } else if (jsonBody is Map) {
    return body.fromJson(jsonBody);
  } else {
    return jsonBody;
  }
}
