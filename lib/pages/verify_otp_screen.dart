import 'package:farmer_eats_android_app/reusable.dart';
import 'package:farmer_eats_android_app/widgets/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom;
    final defaultPinTheme = PinTheme(
      width: deviceHeight * 0.08,
      height: deviceHeight * 0.09,

     
      textStyle: GoogleFonts.beVietnamPro(fontSize: 22, color: Colors.black),
      decoration: BoxDecoration(
        
          color: kTextfieldColor,
          borderRadius: BorderRadius.circular(deviceHeight * 0.015),
          border: Border.all(color: Colors.transparent)),
    );

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
                "Verify OTP",
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
                height: deviceHeight * 0.06,
              ),
              Center(
              
                child: Pinput(
                  length: 5,
                  
                  defaultPinTheme: defaultPinTheme,
                  controller: TextEditingController(),
                  focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!
                          .copyWith(border: Border.all(color: kOrangeColor))),
                  onCompleted: (value) => debugPrint(value),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              CustomButton(
                  deviceHeight: deviceHeight,
                  onPressed: () {},
                  label: 'Submit'),
              SizedBox(height: deviceHeight * 0.035),
            ],
          ),
        ),
      ),
    );
  }
}
