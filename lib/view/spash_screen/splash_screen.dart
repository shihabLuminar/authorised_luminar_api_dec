import 'dart:async';

import 'package:authorised_luminar_api_dec/app_utils/app_utils.dart';
import 'package:authorised_luminar_api_dec/view/home_screen/home_screen.dart';
import 'package:authorised_luminar_api_dec/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Timer(
          Duration(seconds: 0),
          () async {
            String? token = await AppUtils.getAccessToken();

            if (token != null) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
                (route) => false,
              );
            } else {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
                (route) => false,
              );
            }
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle,
              size: 200,
              color: Colors.blue,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
