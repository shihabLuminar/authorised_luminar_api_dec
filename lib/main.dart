import 'package:authorised_luminar_api_dec/controller/home_screen_controller.dart';
import 'package:authorised_luminar_api_dec/controller/login_screen_controller.dart';
import 'package:authorised_luminar_api_dec/view/spash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenController()),
        ChangeNotifierProvider(create: (context) => LoginScreenController())
      ],
      child: MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
