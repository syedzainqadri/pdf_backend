import 'package:pdf_backend/pdf_backend.dart';

final app = Router();

void main(List<String> arguments) async {
  app.mount('/api', HelloWorldApi().router);
  app.mount('/accountData', AllAccountsListApi().router);
  app.mount('/studentData', StudentDataApi().router);
  app.mount('/classData', ClassDataApi().router);
  app.mount('/search', SearchApi().router);

  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(handleCors())
      .addHandler(app);

  await serve(handler, ip, port);
}
