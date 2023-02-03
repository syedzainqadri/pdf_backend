import '../pdf_backend.dart';

class StudentDataApi {
  final getStudentData = GetStudentData();
  Router get router {
    final router = Router();
    router.get('/<id>', (Request request, String id) async {
      var pid = int.parse(id);
      print(id);
      await getStudentData.getStudentDetail(pid);
      return Response.ok(getStudentData.studentData, headers: {
        'Content-Type': 'application/json',
      });
    });
    return router;
  }
}
