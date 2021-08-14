import 'package:http/http.dart';

void findAll() async {
  final Response response =
      await get(Uri.http('http://192.168.0.255:8080', 'transactions'));
  print(response.body);
}
