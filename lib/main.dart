import 'package:farmer_eats_android_app/pages/forgot_password_screen.dart';
import 'package:farmer_eats_android_app/pages/login_screen.dart';
import 'package:farmer_eats_android_app/pages/reset_password_screen.dart';
import 'package:farmer_eats_android_app/pages/verify_otp_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
