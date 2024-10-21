import 'package:farmer_eats_android_app/reusable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPasswordField extends StatelessWidget {
  final double deviceHeight;
  final TextEditingController controller;
  final VoidCallback onForgotPassword;

  const CustomPasswordField({
    super.key,
    required this.deviceHeight,
    required this.controller,
    required this.onForgotPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2), // Light grey background
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child: TextFormField(
        controller: controller,
        obscureText: true, // Password field behavior
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: deviceHeight * 0.02),
          prefixIcon: const Icon(
            Icons.lock_outline_rounded,
            color: Colors.black54,
          ),
          label: Text(
            'Password',
            style: GoogleFonts.beVietnamPro(color: Colors.grey),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(
              top: deviceHeight * 0.01,
              right: deviceHeight * 0.01,
            ),
            child: GestureDetector(
              onTap: onForgotPassword,
              child: Text(
                'Forgot?',
                style: GoogleFonts.beVietnamPro(
                  color: kOrangeColor, // Orange color
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          border: InputBorder.none, // No border to match the image
        ),
      ),
    );
  }
}
