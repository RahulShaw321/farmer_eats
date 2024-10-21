import 'package:farmer_eats_android_app/reusable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class CustomButton extends StatelessWidget {
  final deviceHeight;
  final String label;
  final VoidCallback onPressed;
  const CustomButton({super.key, this.deviceHeight, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: deviceHeight * 0.5,
      height: deviceHeight * 0.062,
      child: ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:kOrangeColor,
                      padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.02),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(deviceHeight * 0.035),
                      ),
                    ),
                    child: Text(label,style: GoogleFonts.beVietnamPro(
                      fontSize: deviceHeight * 0.018,
                    color: Colors.white, // Orange color
                    fontWeight: FontWeight.w500,
                  ), ),
                  ),
    );
  }
}