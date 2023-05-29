// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
//
// class DioHelper {
//   static Dio? dio;
//
//   static init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: 'https://dev2.viavii.com/api/',
//         receiveDataWhenStatusError: true,
//       ),
//     );
//   }
//
//   static Future<Response> getData({
//     @required String? url,
//     String? token,
//   }) async
//   {
//     dio!.options.headers =
//     {
//       'Authorization': token ?? '',
//       'Content-Type': 'application/json',
//       'ptoken': 'bUuXIU8ZnBhLRnXU4X5qqBQRbd1Nof',
//     };
//
//     return await dio!.get(
//       url!,
//     );
//   }
//
// }