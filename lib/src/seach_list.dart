import '../pdf_backend.dart';

class SearchApi {
  final getStudentData = GetStudentData();
  Router get router {
    final router = Router();
    router.get('/<search>', (Request request, String search) async {
      await getStudentData.searchAllAccount(search);
      return Response.ok(getStudentData.searchList, headers: {
        'Content-Type': 'application/json',
      });
    });
    return router;
  }
}
