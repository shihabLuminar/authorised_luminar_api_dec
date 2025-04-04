import 'package:authorised_luminar_api_dec/app_confg/app_config.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static Map<String, String> header({required String token}) {
    Map<String, String> headers = {"Authorization": "Bearer $token "};

    return headers;
  }

  static Future<String?> getData(
      {required String endpoint, Map<String, String>? header}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.get(url, headers: header);

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

  static Future<String?> deleteData(
      {required String endpoint, Map<String, String>? header}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.delete(url, headers: header);

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
      {required String endpoint,
      required Map<String, dynamic> body,
      Map<String, String>? header}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.post(
        url,
        body: body,
        headers: header,
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
      {required String endpoint,
      required Map<String, dynamic> body,
      Map<String, String>? header}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.put(
        url,
        body: body,
        headers: header,
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
      {required String endpoint,
      required Map<String, dynamic> body,
      Map<String, String>? header}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.patch(
        url,
        body: body,
        headers: header,
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
