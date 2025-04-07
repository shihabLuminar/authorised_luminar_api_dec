import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppUtils {
  static printData(String message) {
    // log(message);
  }

  static Future<String?> getAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    return token;
  }

  static String getCurrentDate(String format, DateTime dateTime) {
    var currentDate = DateFormat(format).format(DateTime.now());

    return currentDate;
  }
}
