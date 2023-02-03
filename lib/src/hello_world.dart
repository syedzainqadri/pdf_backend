import '../pdf_backend.dart';

class HelloWorldApi {
  final getStudentData = GetStudentData();
  Router get router {
    final router = Router();
    router.get('/', (Request request) async {
      await getStudentData.getTokens();
      return Response.ok(getStudentData.json, headers: {
        'Content-Type': 'application/json',
      });
    });
    return router;
  }
}
