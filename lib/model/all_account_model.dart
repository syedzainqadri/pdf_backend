// To parse this JSON data, do
//
//     final allAccountModel = allAccountModelFromJson(jsonString);

import 'dart:convert';

AllAccountModel allAccountModelFromJson(String str) =>
    AllAccountModel.fromJson(json.decode(str));

String allAccountModelToJson(AllAccountModel? data) =>
    json.encode(data!.toJson());

class AllAccountModel {
  AllAccountModel({
    this.apiTokenExpirationTimeSeconds,
    this.message,
    this.remainingRequestCount,
    this.remainingRequestCountResetTimeSeconds,
    this.returnValue,
  });

  int? apiTokenExpirationTimeSeconds;
  dynamic message;
  int? remainingRequestCount;
  int? remainingRequestCountResetTimeSeconds;
  ReturnValue? returnValue;

  factory AllAccountModel.fromJson(Map<String, dynamic> json) =>
      AllAccountModel(
        apiTokenExpirationTimeSeconds: json["apiTokenExpirationTimeSeconds"],
        message: json["message"],
        remainingRequestCount: json["remainingRequestCount"],
        remainingRequestCountResetTimeSeconds:
            json["remainingRequestCountResetTimeSeconds"],
        returnValue: ReturnValue.fromJson(json["returnValue"]),
      );

  Map<String, dynamic> toJson() => {
        "apiTokenExpirationTimeSeconds": apiTokenExpirationTimeSeconds,
        "message": message,
        "remainingRequestCount": remainingRequestCount,
        "remainingRequestCountResetTimeSeconds":
            remainingRequestCountResetTimeSeconds,
        "returnValue": returnValue!.toJson(),
      };
}

class ReturnValue {
  ReturnValue({
    this.currentPageItems,
    this.currentPageNumber,
    this.pageSize,
    this.totalItemCount,
    this.totalPageCount,
  });

  List<CurrentPageItem?>? currentPageItems;
  int? currentPageNumber;
  int? pageSize;
  int? totalItemCount;
  int? totalPageCount;

  factory ReturnValue.fromJson(Map<String, dynamic> json) => ReturnValue(
        currentPageItems: json["currentPageItems"] == null
            ? []
            : List<CurrentPageItem?>.from(json["currentPageItems"]!
                .map((x) => CurrentPageItem.fromJson(x))),
        currentPageNumber: json["currentPageNumber"],
        pageSize: json["pageSize"],
        totalItemCount: json["totalItemCount"],
        totalPageCount: json["totalPageCount"],
      );

  Map<String, dynamic> toJson() => {
        "currentPageItems": currentPageItems == null
            ? []
            : List<dynamic>.from(currentPageItems!.map((x) => x!.toJson())),
        "currentPageNumber": currentPageNumber,
        "pageSize": pageSize,
        "totalItemCount": totalItemCount,
        "totalPageCount": totalPageCount,
      };
}

class CurrentPageItem {
  CurrentPageItem({
    this.accountNumber,
    this.address,
    this.agreedToPolicies,
    this.balance,
    this.billingFrequencyId,
    this.billingFrequencyDisplayText,
    this.city,
    this.email,
    this.emergencyContact1Name,
    this.emergencyContact1Phone,
    this.emergencyContact2Name,
    this.emergencyContact2Phone,
    this.emergencyContact3Name,
    this.emergencyContact3Phone,
    this.emergencyContact4Name,
    this.emergencyContact4Phone,
    this.firstName,
    this.id,
    this.inactiveDate,
    this.lastName,
    this.lastPaymentAmount,
    this.lastPaymentDate,
    this.notes,
    this.parent1CellPhone,
    this.parent1Email,
    this.parent1HomePhone,
    this.parent1Name,
    this.parent1WorkPhone,
    this.parent2CellPhone,
    this.parent2Email,
    this.parent2HomePhone,
    this.parent2Name,
    this.parent2WorkPhone,
    this.phone,
    this.registrationDate,
    this.source,
    this.state,
    this.status,
    this.zipCode,
  });

  String? accountNumber;
  String? address;
  bool? agreedToPolicies;
  double? balance;
  int? billingFrequencyId;
  String? billingFrequencyDisplayText;
  String? city;
  String? email;
  String? emergencyContact1Name;
  String? emergencyContact1Phone;
  String? emergencyContact2Name;
  String? emergencyContact2Phone;
  String? emergencyContact3Name;
  String? emergencyContact3Phone;
  String? emergencyContact4Name;
  String? emergencyContact4Phone;
  String? firstName;
  int? id;
  DateTime? inactiveDate;
  String? lastName;
  double? lastPaymentAmount;
  DateTime? lastPaymentDate;
  String? notes;
  String? parent1CellPhone;
  String? parent1Email;
  String? parent1HomePhone;
  String? parent1Name;
  String? parent1WorkPhone;
  String? parent2CellPhone;
  String? parent2Email;
  String? parent2HomePhone;
  String? parent2Name;
  String? parent2WorkPhone;
  String? phone;
  DateTime? registrationDate;
  String? source;
  String? state;
  String? status;
  String? zipCode;

  factory CurrentPageItem.fromJson(Map<String, dynamic> json) =>
      CurrentPageItem(
        accountNumber: json["accountNumber"],
        address: json["address"],
        agreedToPolicies: json["agreedToPolicies"],
        balance: json["balance"],
        billingFrequencyId: json["billingFrequencyId"],
        billingFrequencyDisplayText: json["billingFrequencyDisplayText"],
        city: json["city"],
        email: json["email"],
        emergencyContact1Name: json["emergencyContact1Name"],
        emergencyContact1Phone: json["emergencyContact1Phone"],
        emergencyContact2Name: json["emergencyContact2Name"],
        emergencyContact2Phone: json["emergencyContact2Phone"],
        emergencyContact3Name: json["emergencyContact3Name"],
        emergencyContact3Phone: json["emergencyContact3Phone"],
        emergencyContact4Name: json["emergencyContact4Name"],
        emergencyContact4Phone: json["emergencyContact4Phone"],
        firstName: json["firstName"],
        id: json["id"],
        inactiveDate: DateTime.parse(json["inactiveDate"]),
        lastName: json["lastName"],
        lastPaymentAmount: json["lastPaymentAmount"].toDouble(),
        lastPaymentDate: DateTime.parse(json["lastPaymentDate"]),
        notes: json["notes"],
        parent1CellPhone: json["parent1CellPhone"],
        parent1Email: json["parent1Email"],
        parent1HomePhone: json["parent1HomePhone"],
        parent1Name: json["parent1Name"],
        parent1WorkPhone: json["parent1WorkPhone"],
        parent2CellPhone: json["parent2CellPhone"],
        parent2Email: json["parent2Email"],
        parent2HomePhone: json["parent2HomePhone"],
        parent2Name: json["parent2Name"],
        parent2WorkPhone: json["parent2WorkPhone"],
        phone: json["phone"],
        registrationDate: DateTime.parse(json["registrationDate"]),
        source: json["source"],
        state: json["state"],
        status: json["status"],
        zipCode: json["zipCode"],
      );

  Map<String, dynamic> toJson() => {
        "accountNumber": accountNumber,
        "address": address,
        "agreedToPolicies": agreedToPolicies,
        "balance": balance,
        "billingFrequencyId": billingFrequencyId,
        "billingFrequencyDisplayText": billingFrequencyDisplayText,
        "city": city,
        "email": email,
        "emergencyContact1Name": emergencyContact1Name,
        "emergencyContact1Phone": emergencyContact1Phone,
        "emergencyContact2Name": emergencyContact2Name,
        "emergencyContact2Phone": emergencyContact2Phone,
        "emergencyContact3Name": emergencyContact3Name,
        "emergencyContact3Phone": emergencyContact3Phone,
        "emergencyContact4Name": emergencyContact4Name,
        "emergencyContact4Phone": emergencyContact4Phone,
        "firstName": firstName,
        "id": id,
        "inactiveDate": inactiveDate?.toIso8601String(),
        "lastName": lastName,
        "lastPaymentAmount": lastPaymentAmount,
        "lastPaymentDate": lastPaymentDate?.toIso8601String(),
        "notes": notes,
        "parent1CellPhone": parent1CellPhone,
        "parent1Email": parent1Email,
        "parent1HomePhone": parent1HomePhone,
        "parent1Name": parent1Name,
        "parent1WorkPhone": parent1WorkPhone,
        "parent2CellPhone": parent2CellPhone,
        "parent2Email": parent2Email,
        "parent2HomePhone": parent2HomePhone,
        "parent2Name": parent2Name,
        "parent2WorkPhone": parent2WorkPhone,
        "phone": phone,
        "registrationDate": registrationDate?.toIso8601String(),
        "source": source,
        "state": state,
        "status": status,
        "zipCode": zipCode,
      };
}
