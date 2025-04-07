import 'dart:developer';

import 'package:authorised_luminar_api_dec/repository/api/login_screen_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreenController with ChangeNotifier {
  bool isLoading = false;

  Future<bool> onLogin(
      {required String email, required String password}) async {
    isLoading = true;
    notifyListeners();
    try {
      ///  posting login deatils to servier for token generation

      final response = await LoginScreenService()
          .login(body: {"email": email, "password": password});

      if (response != null) {
        // shared preferences object to store token and refresh token
        SharedPreferences prefs = await SharedPreferences.getInstance();
        // storing access token
        await prefs.setString("token", response.access!);
        // storing refresh token
        await prefs.setString("refresh", response.refresh!);
        return true;
      } else {
        log("Login failed: Invalid response");
        return false;
      }
    } catch (e) {
      print("Error logging in: $e");
      return false;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
