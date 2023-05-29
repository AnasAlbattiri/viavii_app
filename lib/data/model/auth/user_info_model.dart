// To parse this JSON data, do
//
//     final userInfo = userInfoFromJson(jsonString);

import 'dart:convert';

UserInfoModel userInfoFromJson(String str) => UserInfoModel.fromJson(json.decode(str));

String userInfoToJson(UserInfoModel data) => json.encode(data.toJson());

class UserInfoModel {
  Data data;
  int status;

  UserInfoModel({
    required this.data,
    required this.status,
  });

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
    data: Data.fromJson(json["data"]),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "status": status,
  };
}

class Data {
  int id;
  String email;
  String slug;
  String name;
  String firstName;
  String lastName;
  dynamic emailVerifiedAt;
  dynamic address;
  String address2;
  String phone;
  DateTime birthday;
  String city;
  String state;
  String country;
  dynamic zipCode;
  DateTime lastLoginAt;
  dynamic avatarId;
  dynamic businessId;
  dynamic bio;
  String status;
  dynamic createUser;
  dynamic updateUser;
  dynamic vendorCommissionAmount;
  dynamic vendorCommissionType;
  dynamic term;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic paymentGateway;
  dynamic totalGuests;
  dynamic locale;
  dynamic businessName;
  dynamic verifySubmitStatus;
  dynamic isVerified;
  dynamic importedFrom;
  dynamic importedAt;
  dynamic jobTitle;
  dynamic phoneCountryCode;
  dynamic twoFactorOptions;
  dynamic cardBrand;
  dynamic cardLastFour;
  dynamic trialEndsAt;
  dynamic paymentMethodToken;
  dynamic properties;
  dynamic gender;
  dynamic confirmationCode;
  dynamic confirmedAt;
  dynamic notificationPreferences;
  dynamic locationId;
  dynamic legacyId;
  String timeZone;
  dynamic resetPassword;
  dynamic vaccinated;
  dynamic vaccinationLicense;
  dynamic note;
  dynamic defaultLanguage;
  dynamic defaultCurrency;

  Data({
    required this.id,
    required this.email,
    required this.slug,
    required this.name,
    required this.firstName,
    required this.lastName,
    this.emailVerifiedAt,
    this.address,
    required this.address2,
    required this.phone,
    required this.birthday,
    required this.city,
    required this.state,
    required this.country,
    this.zipCode,
    required this.lastLoginAt,
    this.avatarId,
    this.businessId,
    this.bio,
    required this.status,
    this.createUser,
    this.updateUser,
    this.vendorCommissionAmount,
    this.vendorCommissionType,
    this.term,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    this.paymentGateway,
    this.totalGuests,
    this.locale,
    this.businessName,
    this.verifySubmitStatus,
    this.isVerified,
    this.importedFrom,
    this.importedAt,
    this.jobTitle,
    this.phoneCountryCode,
    this.twoFactorOptions,
    this.cardBrand,
    this.cardLastFour,
    this.trialEndsAt,
    this.paymentMethodToken,
    this.properties,
    this.gender,
    this.confirmationCode,
    this.confirmedAt,
    this.notificationPreferences,
    this.locationId,
    this.legacyId,
    required this.timeZone,
    this.resetPassword,
    this.vaccinated,
    this.vaccinationLicense,
    this.note,
    this.defaultLanguage,
    this.defaultCurrency,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    email: json["email"],
    slug: json["slug"],
    name: json["name"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    emailVerifiedAt: json["email_verified_at"],
    address: json["address"],
    address2: json["address2"],
    phone: json["phone"],
    birthday: DateTime.parse(json["birthday"]),
    city: json["city"],
    state: json["state"],
    country: json["country"],
    zipCode: json["zip_code"],
    lastLoginAt: DateTime.parse(json["last_login_at"]),
    avatarId: json["avatar_id"],
    businessId: json["business_id"],
    bio: json["bio"],
    status: json["status"],
    createUser: json["create_user"],
    updateUser: json["update_user"],
    vendorCommissionAmount: json["vendor_commission_amount"],
    vendorCommissionType: json["vendor_commission_type"],
    term: json["term"],
    deletedAt: json["deleted_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    paymentGateway: json["payment_gateway"],
    totalGuests: json["total_guests"],
    locale: json["locale"],
    businessName: json["business_name"],
    verifySubmitStatus: json["verify_submit_status"],
    isVerified: json["is_verified"],
    importedFrom: json["imported_from"],
    importedAt: json["imported_at"],
    jobTitle: json["job_title"],
    phoneCountryCode: json["phone_country_code"],
    twoFactorOptions: json["two_factor_options"],
    cardBrand: json["card_brand"],
    cardLastFour: json["card_last_four"],
    trialEndsAt: json["trial_ends_at"],
    paymentMethodToken: json["payment_method_token"],
    properties: json["properties"],
    gender: json["gender"],
    confirmationCode: json["confirmation_code"],
    confirmedAt: json["confirmed_at"],
    notificationPreferences: json["notification_preferences"],
    locationId: json["location_id"],
    legacyId: json["legacy_id"],
    timeZone: json["time_zone"],
    resetPassword: json["reset_password"],
    vaccinated: json["vaccinated"],
    vaccinationLicense: json["vaccination_license"],
    note: json["note"],
    defaultLanguage: json["default_language"],
    defaultCurrency: json["default_currency"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "slug": slug,
    "name": name,
    "first_name": firstName,
    "last_name": lastName,
    "email_verified_at": emailVerifiedAt,
    "address": address,
    "address2": address2,
    "phone": phone,
    "birthday": birthday.toIso8601String(),
    "city": city,
    "state": state,
    "country": country,
    "zip_code": zipCode,
    "last_login_at": lastLoginAt.toIso8601String(),
    "avatar_id": avatarId,
    "business_id": businessId,
    "bio": bio,
    "status": status,
    "create_user": createUser,
    "update_user": updateUser,
    "vendor_commission_amount": vendorCommissionAmount,
    "vendor_commission_type": vendorCommissionType,
    "term": term,
    "deleted_at": deletedAt,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "payment_gateway": paymentGateway,
    "total_guests": totalGuests,
    "locale": locale,
    "business_name": businessName,
    "verify_submit_status": verifySubmitStatus,
    "is_verified": isVerified,
    "imported_from": importedFrom,
    "imported_at": importedAt,
    "job_title": jobTitle,
    "phone_country_code": phoneCountryCode,
    "two_factor_options": twoFactorOptions,
    "card_brand": cardBrand,
    "card_last_four": cardLastFour,
    "trial_ends_at": trialEndsAt,
    "payment_method_token": paymentMethodToken,
    "properties": properties,
    "gender": gender,
    "confirmation_code": confirmationCode,
    "confirmed_at": confirmedAt,
    "notification_preferences": notificationPreferences,
    "location_id": locationId,
    "legacy_id": legacyId,
    "time_zone": timeZone,
    "reset_password": resetPassword,
    "vaccinated": vaccinated,
    "vaccination_license": vaccinationLicense,
    "note": note,
    "default_language": defaultLanguage,
    "default_currency": defaultCurrency,
  };
}
