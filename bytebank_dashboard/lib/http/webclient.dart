import 'package:bytebank_dashboard/http/interceptors/logging_interceptors.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

Client client = InterceptedClient.build(interceptors: [
  LoggingInterceptor(),
]);

final baseUrl = Uri.http('192.168.0.6:8080', 'transactions');
