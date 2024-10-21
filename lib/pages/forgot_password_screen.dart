import 'package:farmer_eats_android_app/reusable.dart';
import 'package:farmer_eats_android_app/widgets/custom_button.dart';
import 'package:farmer_eats_android_app/widgets/custom_password_field.dart';
import 'package:farmer_eats_android_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                "Forgot Password?",
                style: GoogleFonts.beVietnamPro(
                    fontWeight: FontWeight.bold, fontSize: deviceHeight * 0.03),
              ),
              SizedBox(height: deviceHeight * 0.02),
              Row(
                children: [
                  Text(
                    "Remember your password? ",
                    style: GoogleFonts.beVietnamPro(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Sign Up page');
                    },
                    child: Text(
                      "Login",
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
                  icon: Icon(Icons.phone_outlined),
                  controller: TextEditingController(),
                  label: 'Phone Number'),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              CustomButton(
                  deviceHeight: deviceHeight, onPressed: () {}, label: 'Send Code'),
              SizedBox(height: deviceHeight * 0.035),
              
            ],
          ),
        ),
      ),
    );
  }
}