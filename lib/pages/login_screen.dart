import 'package:farmer_eats_android_app/reusable.dart';
import 'package:farmer_eats_android_app/widgets/custom_button.dart';
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
                  label: 'Email address'),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              CustomPasswordField(
                  deviceHeight: deviceHeight,
                  controller: TextEditingController(),
                  onForgotPassword: () {}),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              CustomButton(
                  deviceHeight: deviceHeight, onPressed: () {}, label: 'Login'),
              const SizedBox(height: 24),
              
              const SizedBox(height: 16),
             Column(crossAxisAlignment: CrossAxisAlignment.center,
             children: [ Text(
                'or login with',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: deviceHeight * 0.01,color: Colors.grey),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 
                  
                Image.asset('assets/images/google.png'),
                  IconButton(
                    icon: Icon(Icons.apple, color: Colors.black,size: deviceHeight * 0.035,),
                    onPressed: () {
                      // Handle Google login
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.facebook, color: Colors.blue,size: deviceHeight * 0.035),
                    onPressed: () {
                      // Handle Facebook login
                    },
                  ),
                ],
              ),],)
            ],
          ),
        ),
      ),
    );
  }
}
