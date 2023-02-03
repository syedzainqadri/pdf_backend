import '../pdf_backend.dart';

class ClassDataApi {
  final getStudentData = GetStudentData();
  Router get router {
    final router = Router();
    router.get('/<id>', (Request request, String id) async {
      var pid = int.parse(id);
      print(id);
      await getStudentData.getClassData(pid);
      return Response.ok(getStudentData.classData, headers: {
        'Content-Type': 'application/json',
      });
    });
    return router;
  }
}
