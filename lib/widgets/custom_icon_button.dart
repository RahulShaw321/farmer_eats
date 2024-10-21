import 'package:flutter/material.dart';


class CustomIconButton extends StatelessWidget {
  final deviceHeight;
  final VoidCallback onPressed;
  final Widget icon;
  const CustomIconButton({super.key, required this.onPressed, required this.icon, this.deviceHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceHeight * 0.125,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300), // Light border
        borderRadius: BorderRadius.circular(deviceHeight * 0.04), // Rounded edges
      ),
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
        padding:  EdgeInsets.all(deviceHeight *0.018), // Padding for better spacing
        splashRadius: 24, // Aligns with rounded design
      ),
    );
  }
}