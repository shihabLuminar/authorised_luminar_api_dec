import 'dart:developer';

import 'package:authorised_luminar_api_dec/app_confg/app_config.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static void header() {}

  static Future<String?> getData({required String endpoint}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.get(url, headers: {
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzQ2MTY2MzQ0LCJpYXQiOjE3NDM1NzQzNDQsImp0aSI6IjIxOGY5ZDk2OGU5NzQ0YzFiMmU4Mzg5ZmEzZjJmM2RmIiwidXNlcl9pZCI6MzYzLCJpZCI6MzYzLCJuYW1lIjoic2hpaGFiIiwicGxhY2UiOiJlcm5ha3VsYW0iLCJlbWFpbCI6InNoaWhhYjFAZ21haWwuY29tIn0.-8_YWcl2DV4TG33N8zqDeSyHmm83Aho1VRfkyaew56g"
      });

      if (response.statusCode == 200) {
        return response.body.toString();
      } else {
        print(
            "Error fetching employees with status code: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<String?> deleteData({required String endpoint}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.delete(url, headers: {
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzQ2MTY2MzQ0LCJpYXQiOjE3NDM1NzQzNDQsImp0aSI6IjIxOGY5ZDk2OGU5NzQ0YzFiMmU4Mzg5ZmEzZjJmM2RmIiwidXNlcl9pZCI6MzYzLCJpZCI6MzYzLCJuYW1lIjoic2hpaGFiIiwicGxhY2UiOiJlcm5ha3VsYW0iLCJlbWFpbCI6InNoaWhhYjFAZ21haWwuY29tIn0.-8_YWcl2DV4TG33N8zqDeSyHmm83Aho1VRfkyaew56g"
      });

      if (response.statusCode == 200) {
        return response.body.toString();
      } else {
        print(
            "Error fetching employees with status code: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<String?> postData(
      {required String endpoint, required Map<String, dynamic> body}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.post(
        url,
        body: body,
        headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzQ2MTY2MzQ0LCJpYXQiOjE3NDM1NzQzNDQsImp0aSI6IjIxOGY5ZDk2OGU5NzQ0YzFiMmU4Mzg5ZmEzZjJmM2RmIiwidXNlcl9pZCI6MzYzLCJpZCI6MzYzLCJuYW1lIjoic2hpaGFiIiwicGxhY2UiOiJlcm5ha3VsYW0iLCJlbWFpbCI6InNoaWhhYjFAZ21haWwuY29tIn0.-8_YWcl2DV4TG33N8zqDeSyHmm83Aho1VRfkyaew56g"
        },
      );

      if (response.statusCode == 200) {
        return response.body.toString();
      } else {
        print(
            "Error fetching employees with status code: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<String?> putData(
      {required String endpoint, required Map<String, dynamic> body}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.put(
        url,
        body: body,
        headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzQ2MTY2MzQ0LCJpYXQiOjE3NDM1NzQzNDQsImp0aSI6IjIxOGY5ZDk2OGU5NzQ0YzFiMmU4Mzg5ZmEzZjJmM2RmIiwidXNlcl9pZCI6MzYzLCJpZCI6MzYzLCJuYW1lIjoic2hpaGFiIiwicGxhY2UiOiJlcm5ha3VsYW0iLCJlbWFpbCI6InNoaWhhYjFAZ21haWwuY29tIn0.-8_YWcl2DV4TG33N8zqDeSyHmm83Aho1VRfkyaew56g"
        },
      );

      if (response.statusCode == 200) {
        return response.body.toString();
      } else {
        print(
            "Error fetching employees with status code: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<String?> patchData(
      {required String endpoint, required Map<String, dynamic> body}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.patch(
        url,
        body: body,
        headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzQ2MTY2MzQ0LCJpYXQiOjE3NDM1NzQzNDQsImp0aSI6IjIxOGY5ZDk2OGU5NzQ0YzFiMmU4Mzg5ZmEzZjJmM2RmIiwidXNlcl9pZCI6MzYzLCJpZCI6MzYzLCJuYW1lIjoic2hpaGFiIiwicGxhY2UiOiJlcm5ha3VsYW0iLCJlbWFpbCI6InNoaWhhYjFAZ21haWwuY29tIn0.-8_YWcl2DV4TG33N8zqDeSyHmm83Aho1VRfkyaew56g"
        },
      );

      if (response.statusCode == 200) {
        return response.body.toString();
      } else {
        print(
            "Error fetching employees with status code: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
