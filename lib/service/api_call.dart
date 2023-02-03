import 'package:pdf_backend/model/all_account_model.dart';
import 'package:pdf_backend/pdf_backend.dart';
import 'package:http/http.dart' as http;

class GetStudentData {
  var allAccountModel = AllAccountModel();
  var token;
  var json;
  var accountData;
  var studentData;
  var classData;
  var searchList;
  getTokens() async {
    String url =
        '$baseUrl/auth/token?clientId=$clientId&clientSecret=$clientSecret';
    var response = await http.post(
      Uri.parse(url),
    );
    json = response.body;
    Map<String, dynamic> map = jsonDecode(response.body);
    token = map['returnValue'];
    print(token);
  }

  getAccounts() async {
    await getTokens();
    String url = '$baseUrl/accounts';
    var response = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'text/plain',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        "Access-Control-Allow-Origin": "*",
      },
    );
    accountData = response.body;
    allAccountModel = allAccountModelFromJson(accountData);
  }

  searchAllAccount(search) async {
    print(search);
    searchList = await accountData.returnValue.currentPageItems.firstName
        .where((element) =>
            element!.firstName!.toLowerCase().contains(search.toLowerCase()))
        .toList();
  }

  getStudentDetail(accountId) async {
    print(accountId);
    await getTokens();
    String url = '$baseUrl/accounts/$accountId/students?studentStatus=0';
    var response = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'text/plain',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        "Access-Control-Allow-Origin": "*",
      },
    );
    studentData = response.body;
  }

  getClassData(studentId) async {
    await getTokens();
    String url = '$baseUrl/students/$studentId/classes/0';
    var response = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'text/plain',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        "Access-Control-Allow-Origin": "*",
      },
    );
    classData = response.body;
  }
}
