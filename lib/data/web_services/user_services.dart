// import '../../utils/strings.dart';
// import '../model/auth/user_info_model.dart';
// import 'package:http/http.dart' as http;
//
// class UserServices {
//
//   static Future<UserInfoModel> getUserInfo() async {
//
//     var response = await http.get(
//       Uri.parse('$baseUrl/auth/me'),
//     );
//
//     if(response.statusCode == 200){
//       var jsonData = response.body;
//       return userInfoFromJson(jsonData);
//     } else {
//       return throw Exception("Failed to load data");
//     }
//
//   }
//
// }