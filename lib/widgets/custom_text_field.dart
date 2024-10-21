import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final double deviceHeight;
  final String label;
  final TextEditingController controller;
  const CustomTextField(
      {super.key,
      required this.deviceHeight,
      required this.controller,
       required this.label});

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
            label,
            style: GoogleFonts.beVietnamPro(color: Colors.grey),
          ),

          border: InputBorder.none, // No border to match the image
        ),
      ),
    );
  }
}
