import '../pdf_backend.dart';

class AllAccountsListApi {
  final getStudentData = GetStudentData();
  Router get router {
    final router = Router();
    router.get('/', (Request request) async {
      await getStudentData.getAccounts();
      return Response.ok(getStudentData.accountData, headers: {
        'Content-Type': 'application/json',
      });
    });
    return router;
  }
}
