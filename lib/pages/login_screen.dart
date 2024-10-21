import 'package:farmer_eats_android_app/reusable.dart';
import 'package:farmer_eats_android_app/widgets/custom_button.dart';
import 'package:farmer_eats_android_app/widgets/custom_icon_button.dart';
import 'package:farmer_eats_android_app/widgets/custom_password_field.dart';
import 'package:farmer_eats_android_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: SizedBox(
        height: deviceHeight,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: deviceHeight * 0.02, vertical: deviceHeight * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: deviceHeight * 0.02),
              Text(
                "FarmerEats",
                style: GoogleFonts.beVietnamPro(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: deviceHeight * 0.09),
              Text(
                "Welcome back!",
                style: GoogleFonts.beVietnamPro(
                    fontWeight: FontWeight.bold, fontSize: deviceHeight * 0.03),
              ),
              SizedBox(height: deviceHeight * 0.02),
              Row(
                children: [
                  Text(
                    "New here? ",
                    style: GoogleFonts.beVietnamPro(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Sign Up page');
                    },
                    child: Text(
                      "Create account?",
                      style: GoogleFonts.beVietnamPro(color: kOrangeColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight * 0.1,
              ),
              CustomTextField(
                  deviceHeight: deviceHeight,
                  controller: TextEditingController(),
                  icon: Icon(Icons.email),
                  label: 'Email address'),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              CustomPasswordField(
                  deviceHeight: deviceHeight,
                  controller: TextEditingController(),
                  onForgotPassword: () {}),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              CustomButton(
                  deviceHeight: deviceHeight, onPressed: () {}, label: 'Login'),
              SizedBox(height: deviceHeight * 0.035),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'or login with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: deviceHeight * 0.01, color: Colors.grey),
                  ),
                   SizedBox(height: deviceHeight * 0.035),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconButton(
                        deviceHeight: deviceHeight,
                        icon: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/225px-Google_%22G%22_logo.svg.png',
                          height: deviceHeight * 0.042, // Adjust icon size to fit button design
                        ),
                        onPressed: () {
                          // Handle Google login
                        },
                      ),
                      CustomIconButton(
                        deviceHeight: deviceHeight,
                        icon: Icon(
                          Icons.apple,
                          color: Colors.black,
                          size: deviceHeight * 0.042,
                        ),
                        onPressed: () {
                          // Handle Google login
                        },
                      ),
                      CustomIconButton(
                        deviceHeight: deviceHeight,
                        icon: Icon(Icons.facebook,
                            color: Colors.blue, size: deviceHeight * 0.042),
                        onPressed: () {
                          // Handle Facebook login
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
